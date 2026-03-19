#!/bin/bash

typhos --scrollable true --size 1450,850 --display-type "embedded" --layout "vertical" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m2', 'name':'mrco_smarAct_x'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m1', 'name':'mrco_smarAct_y'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:MCS2:02:m3', 'name':'mrco_smarAct_theta'}]" &

