@echo off

# This is the path where Isaac Sim is installed which contains the python.sh script
set ISAAC_SIM_PATH=C:\isaacsim

REM Go to the Palletjack SDG script location
cd /d D:\06 - NVIDIA\Labs\Lab Basics 05 - Replicator\synthetic_data_generation_training_workflow\palletjack_sdg

set SCRIPT_PATH=%cd%\standalone_palletjack_sdg.py
set OUTPUT_WAREHOUSE=%cd%\palletjack_data\distractors_warehouse
set OUTPUT_ADDITIONAL=%cd%\palletjack_data\distractors_additional
set OUTPUT_NO_DISTRACTORS=%cd%\palletjack_data\no_distractors


REM Go to Isaac Sim
cd /d %ISAAC_SIM_PATH%

echo Starting Data Generation 

python.bat "%SCRIPT_PATH%" --height 544 --width 960 --num_frames 2000 --distractors warehouse --data_dir "%OUTPUT_WAREHOUSE%"
