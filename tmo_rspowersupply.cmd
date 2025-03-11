#!/bin/bash

cd /reg/g/pcds/epics-dev/screens/pydm/tmo_screens
#source /reg/g/pcds/pyps/conda/py36env.sh
source /reg/g/pcds/pyps/conda/dev_conda

typhos devices "pcdsdevices.rs_powersupply.RohdeSchwarzPowerSupply[{'prefix':'TMO:IP1:HMP:01', 'name':'TMO_RSPowersupply'}]"
