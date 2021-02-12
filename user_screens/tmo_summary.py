import os
import sys
import yaml
from pydm import Display
from ophyd import EpicsSignal, EpicsSignalRO, PVPositioner
from PyQt5 import QtCore, QtGui, QtWidgets
from pydm.widgets import PyDMLabel
import logging
import numpy as np

BASE = '/cds/group/pcds/epics-dev/aegger/tmo_screens/user_screens/'
UI_FILE = 'tmo_summary.ui'
STYLE_FILE = 'style.css'
ALARM_FILE = 'alarm_list.yml'

logger = logging.getLogger(__name__)

class TMOSummary(Display):
    def __init__(self, parent=None, args=None, macros=None, alarms_file=ALARM_FILE):
        super(TMOSummary, self).__init__(parent=parent, args=args, macros=macros)
        self._alarm_config = self.load_alarms(f'{BASE}{alarms_file}')

    def ui_filename(self):
        """Boiler plate pydm"""
        return UI_FILE

    def ui_filepath(self):
        """Boiler plate pydm"""
        cur_path = os.path.dirname(os.path.realpath(__file__))
        return os.path.join(cur_path, self.ui_filename())

    def load_alarms(self, alarm_file):
        """A way of having user defined alarms as these can change
        for different experimemnts"""
        try:
            with open(alarm_file) as f:
                alarm_config = yaml.load(f, Loader=yaml.FullLoader)
            
            for k in alarm_config.keys():
                EpicsSignalRO(k).subscribe(self.compare_clbk)    
            return alarm_config
        except Exception as e:
            logger.warning(f'Unable to load alarm config: {e}')

    def compare_clbk(self, *args, **kwargs):
        pv = getattr(kwargs['obj'], 'name')
        cur_val = getattr(kwargs['obj'], 'value')
        
        if pv in self._alarm_config.keys():
            oper = self._alarm_config[pv]['oper']
            val = self._alarm_config[pv]['val']
            name = self._alarm_config[pv]['name']
            style_sheet = getattr(self.ui, name).styleSheet() 
            
            if oper == 'less' and cur_val < val:
                if style_sheet != 'color: red':
                    getattr(self.ui, name).setStyleSheet('color: red')
            elif oper == 'more' and cur_val > val:
                if style_sheet != 'color: red':
                    getattr(self.ui, name).setStyleSheet('color: red')
            elif oper == 'equal' and cur_val != val:
                if style_sheet != 'color: red':
                    getattr(self.ui, name).setStyleSheet('color: red')
            elif style_sheet == 'color: red':
                if style_sheet != '':
                    getattr(self.ui, name).setStyleSheet('color: red')

