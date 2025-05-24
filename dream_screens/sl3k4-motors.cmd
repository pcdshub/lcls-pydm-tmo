#!/bin/bash

typhos --scrollable true --size 1450,850 --display-type "embedded" --layout "vertical" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m8', 'name':'sl3k4_south'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m9', 'name':'sl3k4_north'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m7', 'name':'sl3k4_top'}]" \
            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m12', 'name':'sl3k4_bottom'}]"  &

