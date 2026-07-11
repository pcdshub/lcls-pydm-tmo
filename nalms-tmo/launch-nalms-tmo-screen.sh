#!/bin/bash

source /cds/group/pcds/pyps/conda/dev_conda

slam --topics GMDXGMD,TMO-alarms --bootstrap-servers 172.24.5.232:9094
