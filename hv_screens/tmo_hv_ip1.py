import os.path

from qtpy.QtCore import QTimer

from pydm import Display


def get_macros():
    # Get the dict of macros needed to display all widgets

    name = 'TMO HV1'
    prefixes = ['TMO:MPOD:01', 'TMO:MPOD:02']
    modules = [range(10), [5,6]]
    channels = range(24)

    macros = []
    for pre, mpod_modules in zip(prefixes, modules):
        for mod in mpod_modules:
            for ch in channels:
                macros.append(
                    dict(
                        NAME=name,
                        PREFIX=pre,
                        MOD=mod,
                        CH=ch,
                        )
                    )
    return macros


class TMOHV(Display):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.setup_ui()

    def ui_filename(self):
        return os.path.dirname(__file__) + '/tmo_hv.ui'

    def setup_ui(self):
        self.ui.title_lbl.setText("TMO IP1 HV")
        self.ui.hv_table.set_macros(get_macros())
        self.ui.hv_table.add_filter(
            'Hide Empty Descriptions',
            self.desc_filter,
            )
        self.ui.hv_table.add_filter(
            'Hide Disconnected PVs',
            self.conn_filter,
            )
        self.ui.hv_table.add_filter(
            'Hide Dead Channels',
            self.dead_filter,
            )
        self.ui.hv_table.add_filter(
            'Hide Off Channels',
            self.off_filter,
            active=False,
            )
        self.ui.hv_table.initial_sort_header = 'desc'

    def desc_filter(self, value_dict):
        return bool(value_dict['desc'])

    def conn_filter(self, value_dict):
        return value_dict['connected']

    def dead_filter(self, value_dict):
        desc = str(value_dict['desc'])
        return not (desc.lower() == 'dead' or '*' in desc)

    def off_filter(self, value_dict):
        return value_dict['is_on']
