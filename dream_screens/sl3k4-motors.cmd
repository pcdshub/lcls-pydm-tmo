#!/bin/bash

#typhos --scrollable true --size 1450,850 --display-type "embedded" --layout "vertical" \
#            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m8', 'name':'sl3k4_south'}]" \
#            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m9', 'name':'sl3k4_north'}]" \
#            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m7', 'name':'sl3k4_top'}]" \
#            "pcdsdevices.epics_motor.SmarAct[{'prefix':'TMO:DREAM:MCS2:01:m12', 'name':'sl3k4_bottom'}]"  &

typhos "pcdsdevices.dream_motion.DREAM_SL3K4[{'prefix':'DREAM:SL3K4','name':'sl3k4','cam':'IM6K4:PPM:CAM','data_source':'IMAGE2'}]" --scrollable TRUE --size 1450,850 --display-type "embedded" --layout "vertical" &
