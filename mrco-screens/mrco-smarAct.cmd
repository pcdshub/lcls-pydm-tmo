#!/bin/bash

typhos --scrollable true --size 1450,850 --display-type "embedded" --layout "vertical" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m1', 'name':'mrco_smarAct_m1'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m2', 'name':'mrco_smarAct_m2'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m3', 'name':'mrco_smarAct_m3'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m4', 'name':'mrco_smarAct_m4'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m5', 'name':'mrco_smarAct_m5'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m6', 'name':'mrco_smarAct_m6'}]"  &

