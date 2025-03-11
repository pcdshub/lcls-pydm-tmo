#!/bin/bash

typhos --scrollable false --size 1450,850 --display-type "embedded" --layout "flow" devices "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:01', 'name':'TMO:MRCO:MMS:01'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:02', 'name':'TMO:MRCO:MMS:02'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxisEPS[{'prefix':'TMO:MRCO:MMS:03', 'name':'TMO:MRCO:MMS:03'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:04', 'name':'TMO:MRCO:MMS:04'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:05', 'name':'TMO:MRCO:MMS:05'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxisEPS[{'prefix':'TMO:MRCO:MMS:06', 'name':'TMO:MRCO:MMS:06'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:V4', 'name':'TMO:MRCO:MMS:V4'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:V5', 'name':'TMO:MRCO:MMS:V5'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MRCO:MMS:V6', 'name':'TMO:MRCO:MMS:V6'}]" &

