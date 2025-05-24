#!/bin/bash

typhos --scrollable true --size 1450,850 --display-type "embedded" --layout "vertical" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m6', 'name':'dream_gsjs_east'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m5', 'name':'dream_gsjs_north'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m10', 'name':'dream_gsjs_south'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m11', 'name':'dream_gsjs_west'}]"  &

