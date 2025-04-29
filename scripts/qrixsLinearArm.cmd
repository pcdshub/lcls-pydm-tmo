#!/bin/bash

#source /reg/g/pcds/pyps/conda/py36env.sh
source /reg/g/pcds/pyps/conda/dev_conda

typhos --display-type "embedded" --layout "vertical" devices "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'QRIX:SDS:MMS:ROT_H', 'name':'QRIX:SDS:MMS:ROT_H'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'QRIX:SDS:MMS:H', 'name':'QRIX:SDS:MMS:H'}]" &
