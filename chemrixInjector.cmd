#!/bin/bash

#source /reg/g/pcds/pyps/conda/py36env.sh
source /reg/g/pcds/pyps/conda/dev_conda

typhos devices "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'CRIX:SDS:MMS:X', 'name':'CRIX:SDS:MMS:X'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'CRIX:SDS:MMS:Y', 'name':'CRIX:SDS:MMS:Y'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'CRIX:SDS:MMS:Z', 'name':'CRIX:SDS:MMS:Z'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'CRIX:SDS:MMS:RY', 'name':'CRIX:SDS:MMS:RY'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'CRIX:SDS:MMS:SHROUD', 'name':'CRIX:SDS:MMS:SHROUD'}]" \
               "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'CRIX:SDS:MMS:ZENCODER', 'name':'CRIX:SDS:MMS:ZENCODER'}]" &
