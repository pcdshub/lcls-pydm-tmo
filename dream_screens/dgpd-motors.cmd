#!/bin/bash

typhos --scrollable true --size 1450,850 --display-type "embedded" --layout "vertical" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m3', 'name':'dream_dgpd_ret'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m2', 'name':'dream_dgpd_x'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m1', 'name':'dream_dgpd_y'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m4', 'name':'dream_dgpd_z'}]"  &

