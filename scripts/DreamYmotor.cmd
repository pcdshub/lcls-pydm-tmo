#!/bin/bash

#source /reg/g/pcds/pyps/conda/py36env.sh
source /reg/g/pcds/pyps/conda/dev_conda

typhos --display-type "embedded" --layout "vertical" devices "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'DREAM:MC:MMS:Y', 'name':'DREAM:MC:MMS:Y'}]" "pcdsdevices.epics_motor.BeckhoffAxis[{'prefix':'DREAM:MC:MMS:Y', 'name':'DREAM:MC:MMS:Y'}]" &
