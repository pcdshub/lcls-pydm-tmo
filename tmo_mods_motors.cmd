#! /bin/bash

# set up environment
source $SETUP_SITE_TOP/epicsenv-cur.sh
source /cds/group/pcds/pyps/conda/py36env.sh

# Build the command to pass to Typhos
SCREEN_OPTS='--layout grid --cols 4 --display-type embedded --size 1920,1080'
#SCREEN_OPTS2='--layout grid --cols 5 --scrollable true --display-type embedded --size 800,1800'

/cds/group/pcds/pyps/conda/py39/envs/pcds-5.8.4/bin/typhos $SCREEN_OPTS \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:INJ_DP2_MR1', 'name': 'LM1K4:INJ_DP2_MR1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:INJ_MP1_ATT1_WP1', 'name': 'LM1K4:INJ_MP1_ATT1_WP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:INJ_MP1_ATT1_WP2', 'name': 'LM1K4:INJ_MP1_ATT1_WP2'}]" \
\
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:COM_DP1_MR1', 'name': 'LM1K4:COM_DP1_MR1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:COM_MP2_DLY1', 'name': 'LM1K4:COM_MP2_DLY1'}]" \
\
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_OAP1_LM1', 'name': 'LM1K4:EJX_MP1_OAP1_LM1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP2_MR1_LM1', 'name': 'LM1K4:EJX_MP2_MR1_LM1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP2_LS1_LM2', 'name': 'LM1K4:EJX_MP2_LS1_LM2'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP2_LS1_LM3', 'name': 'LM1K4:EJX_MP2_LS1_LM3'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_DP6_CVS1_MR1', 'name': 'LM1K4:EJX_DP6_CVS1_MR1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_DP6_CVS1_MR2', 'name': 'LM1K4:EJX_DP6_CVS1_MR2'}]" \
\
\
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:COM_MP1_MR1_TIP1', 'name': 'LM1K4:COM_MP1_MR1_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:COM_MP1_MR1_TILT1', 'name': 'LM1K4:COM_MP1_MR1_TILT1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:COM_MP2_BS2_TIP1', 'name': 'LM1K4:COM_MP2_BS2_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:COM_MP2_BS2_TILT1', 'name': 'LM1K4:COM_MP2_BS2_TILT1'}]" \
\
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:ATM_MP1_MR1_TIP1', 'name': 'LM1K4:ATM_MP1_MR1_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:ATM_MP1_MR1_TILT1', 'name': 'LM1K4:ATM_MP1_MR1_TILT1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:ATM_MP1_MR3_TIP1', 'name': 'LM1K4:ATM_MP1_MR3_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:ATM_MP1_MR3_TILT1', 'name': 'LM1K4:ATM_MP1_MR3_TILT1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:ATM_MP1_MR0_TIP1', 'name': 'LM1K4:ATM_MP1_MR0_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:ATM_MP1_MR0_TILT1', 'name': 'LM1K4:ATM_MP1_MR0_TILT1'}]" \
\
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_OAP1_MR1_TIP1', 'name': 'LM1K4:EJX_MP1_OAP1_MR1_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_OAP1_MR1_TILT1', 'name': 'LM1K4:EJX_MP1_OAP1_MR1_TILT1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_MR1_TIP1', 'name': 'LM1K4:EJX_MP1_MR1_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_MR1_TILT1', 'name': 'LM1K4:EJX_MP1_MR1_TILT1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_OAP1_MR3_TIP1', 'name': 'LM1K4:EJX_MP1_OAP1_MR3_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_OAP1_MR3_TILT1', 'name': 'LM1K4:EJX_MP1_OAP1_MR3_TILT1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_MR2_TIP1', 'name': 'LM1K4:EJX_MP1_MR2_TIP1'}]" \
"pcdsdevices.epics_motor.SmarAct[{'prefix': 'LM1K4:EJX_MP1_MR2_TILT1', 'name': 'LM1K4:EJX_MP1_MR2_TILT1'}]" \
&

# Optionally open a second window with the embedded, bundled tip-tilts. This doesn't behave nicely in grid mode though, unfortunately.
#/cds/group/pcds/pyps/conda/py39/envs/pcds-5.8.4/bin/typhos $SCREEN_OPTS2 \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:COM_MP1_MR1', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:COM_MP1_MR1'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:COM_MP2_BS2', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:COM_MP2_BS2'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:ATM_MP1_MR1', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:ATM_MP1_MR1'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:ATM_MP1_MR3', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:ATM_MP1_MR3'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:ATM_MP1_MR0', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:ATM_MP1_MR0'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:EJX_MP1_OAP1_MR1', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:EJX_MP1_OAP1_MR1'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:EJX_MP1_MR1', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:EJX_MP1_MR1'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:EJX_MP1_OAP1_MR3', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:EJX_MP1_OAP1_MR3'}]" \
#"pcdsdevices.epics_motor.SmarActTipTilt[{'prefix': 'LM1K4:EJX_MP1_MR2', 'tip_pv': '_TIP1', 'tilt_pv': '_TILT1', 'name': 'LM1K4:EJX_MP1_MR2'}]" \
#&
