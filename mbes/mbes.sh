#!/bin/bash

source /cds/group/pcds/pyps/conda/pcds_conda

typhos  --layout grid --cols 2 --display-type embedded --scrollable auto  \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:01', 'name':'Magnetic X'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:02', 'name':'Magnetic Y'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:03', 'name':'Magnetic Z'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:04', 'name':'Gas JET X'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:05', 'name':'Gas JET Y'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:06', 'name':'Gas JET Z'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:07', 'name':'Gas NEEDLE X'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:08', 'name':'Gas NEEDLE Y'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:09', 'name':'Gas NEEDLE Z'}]" \
"pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'TMO:MBES:MMS:10', 'name':'Sample paddle X'}]" &

#--layout grid --cols 1 --display-type embedded --scrollable auto --size 600,800
