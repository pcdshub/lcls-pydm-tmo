#!/bin/bash

#source /cds/group/pcds/pyps/conda/pcds_conda
source /cds/group/pcds/pyps/conda/dev_conda

typhos --layout flow --display-type embed --size 1250,1800 \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:INT_MP1_DLY1', 'name':'LM1K4:INT_MP1_DLY1'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:EJX_MP2_LS3_LM1', 'name':'LM1K4:EJX_MP2_LS3_LM1'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:EJX_MP2_LS3_LM2', 'name':'LM1K4:EJX_MP2_LS3_LM2'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:EJX_MP2_LS3_LM3', 'name':'LM1K4:EJX_MP2_LS3_LM3'}]" \
  "pcdsdevices.lasers.elliptec.EllRotation[{'prefix':'LM1K4:EJX_MP2_ATT1_POL1:ELL', 'channel':1, 'name':'LM1K4:EJX_MP2_ATT1_POL1'}]" \
  "pcdsdevices.lasers.elliptec.EllRotation[{'prefix':'LM1K4:EJX_MP2_ATT1_POL2:ELL', 'channel':2, 'name':'LM1K4:EJX_MP2_ATT1_POL2'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:EJX_DP6_CVS1_MR1', 'name':'LM1K4:EJX_DP6_CVS1_MR1'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:EJX_DP6_CVS1_MR2', 'name':'LM1K4:EJX_DP6_CVS1_MR2'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:EJX_MP1_OAP1', 'name':'LM1K4:EJX_MP1_OAP1'}]" \
  "pcdsdevices.epics_motor.SmarActTipTilt[{'prefix':'LM1K4:EJX_MP1_OAP1', 'tip_pv':'_TIP1', 'tilt_pv':'_TILT1', 'name':'LM1K4:EJX_MP1_OAP1_MR1'}]" \
  "pcdsdevices.epics_motor.SmarActTipTilt[{'prefix':'LM1K4:EJX_MP1_OAP1', 'tip_pv':'_TIP3', 'tilt_pv':'_TILT3', 'name':'LM1K4:EJX_MP1_OAP1_MR3'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:INJ_MP1_ATT1_WP1', 'name':'LM1K4:INJ_MP1_ATT1_WP1'}]" \
  "pcdsdevices.epics_motor.SmarAct[{'prefix':'LM1K4:INJ_DP2_MR1', 'name':'LM1K4:INJ_DP2_MR2'}]" &
