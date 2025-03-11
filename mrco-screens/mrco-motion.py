from os import path
from pydm import PyDMApplication
from pydm import Display
from pydm import utilities
from pydm.widgets import channel
from PyQt5 import QtCore
from PyQt5 import QtWidgets
import math
import epics
import typhos
from pcdsdevices import epics_motor
from pcdsdevices import slits
from functools import partial

class TyphosMotorsFromIndicators:

    def __init__(self, width, height, indicators, display_type=typhos.display.DisplayTypes.embedded_screen, num_cols=1, blank_rows=0, resize_typhos_widgets=False, hasEPS=False):
        self.indicators = indicators
        self.parent_widget = QtWidgets.QWidget()
        self.layout_widget = QtWidgets.QGridLayout()
        self.parent_widget.setLayout(self.layout_widget)
        self.parent_widget.closeEvent = self.closeEvent
        self.typhos_widgets = []
        self.display_type = display_type
        self.num_cols = num_cols
        self.blank_rows = blank_rows
        self.width = width
        self.height = height
        self.resize_typhos_widgets = resize_typhos_widgets
        self.hasEPS = hasEPS

    def show(self, event):
        self.buildWidget()
        self.parent_widget.resize(self.width, self.height)
        if (self.resize_typhos_widgets):
            for typhos_widget in self.typhos_widgets:
                typhos_widget.resize(self.width, self.height)
        self.parent_widget.show()

    def buildWidget(self):
        num = 0
        for indicator in self.indicators:
            head, sep, motor_channel = ":".join(indicator.channel.split(":")[:-1]).partition('//')
            motor_channel = ":".join(motor_channel.split(":")[:-1])

            if (self.hasEPS):
                device = epics_motor.BeckhoffAxisEPS(prefix=motor_channel, name=motor_channel)
            else:
                device = epics_motor.BeckhoffAxis(prefix=motor_channel, name=motor_channel)

            self.typhos_widgets.append(typhos.TyphosDeviceDisplay.from_device(\
                device=device,\
                parent=self.parent_widget,\
                display_type=self.display_type))
            
            row_num = self.blank_rows + math.floor(num / self.num_cols)
            col_num = num % self.num_cols

            self.layout_widget.addWidget(self.typhos_widgets[len(self.typhos_widgets)-1], row_num, col_num)
            self.layout_widget.setRowStretch(row_num, 1)
            num = num + 1

    def closeEvent(self, event):
        self.cleanup()
        self.parent_widget.close()

    def __del__(self):
        self.cleanup()

    def cleanup(self):
        for typhos_display in self.typhos_widgets:
            utilities.connection.close_widget_connections(typhos_display)

class App(Display):

    def __init__(self, parent=None, args=None, macros=None):
        print('Start of __init__ for template launcher')
        print(f'args={args}, macros={macros}')
        # Call super after handling args/macros but before doing pyqt stuff
        super().__init__(parent=parent, args=args, macros=macros)
        # Now it is safe to refer to self.ui and access your widget objects
        # It is too late to do any macros processing
        #self.app = QtWidgets.QApplication.instance()
        #self.app.aboutToQuit.connect(self.cleanup)

        # Track all the typhos widgets that are created so they can be cleaned up
        # properly at the end.
        self.typhos_widgets = []
            
        # Sample Paddle Motions

        # Capture the list of indicators used for all the motors.
        self.indicators = []
        self.indicators.append(self.ui.PyDMByteIndicator_SPVX)
        self.indicators.append(self.ui.PyDMByteIndicator_SPVY)
        self.indicators.append(self.ui.PyDMByteIndicator_SPVZ)
        self.indicators.append(self.ui.PyDMByteIndicator_SPX)
        self.indicators.append(self.ui.PyDMByteIndicator_SPY)
        self.indicators.append(self.ui.PyDMByteIndicator_SPZ)
        self.indicators.append(self.ui.PyDMByteIndicator_NX)
        self.indicators.append(self.ui.PyDMByteIndicator_NY)
        self.indicators.append(self.ui.PyDMByteIndicator_NZ)

        self.single_motor_typhos_displays = []
        for indicator in self.indicators:
            single_motor_typhos_display = TyphosMotorsFromIndicators(500, 650, [indicator], display_type=typhos.display.DisplayTypes.detailed_screen, resize_typhos_widgets=True)
            self.single_motor_typhos_displays.append(single_motor_typhos_display)
            indicator.mouseReleaseEvent = partial(single_motor_typhos_display.show)

    def ui_filename(self):
        return 'mrco-motion.ui'

    def ui_filepath(self):
        return path.join(path.dirname(path.realpath(__file__)), self.ui_filename())