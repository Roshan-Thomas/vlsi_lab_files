#!/bin/ksh
# This script was generated Tue Feb  6 11:35:28 2024 by:
#
# Program: /eda/cadence/2022-23/RHELx86/QUANTUS_21.11.000/tools.lnx86/extraction/bin/64bit//RCXspice
# Version: 21.1.1-s329
# Created: Fri Aug 27 17:50:08 PDT 2021
#
#/eda/cadence/2022-23/RHELx86/QUANTUS_21.11.000/tools.lnx86/extraction/bin/64bit//RCXspice \
#	-techdir /eda/cadence/ams/4.10/assura/c35b4/c35b4/RCX-typical -newlvs \
#	/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv.xcn -assura_run_dir \
#	/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv -assura_run_name inv \
#	-rcxdir /home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv \
#	-xy_coordinates c,r -type full -temperature 25.0 -tempdir \
#	/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/rcx_temp \
#	-sub_node_char # -res_models no -parasitic_res_width \
#	-parasitic_res_models comment -parasitic_cap_models no \
#	-output_net_name_space layout -output_hierarchy_delimiter / -output \
#	/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/extview.tmp \
#	-net_name_space schematic -minR 0.001 -minC_by_percentage 0.1 -minC \
#	1e-17 -max_merged_via_size auto -max_fracture_length infinite \
#	-macro_cell -lvs_source assura -ignore_gate_diffusion_fringing_cap \
#	-hierarchy_delimiter / -fracture_length_units MICRONS -extract both \
#	-df2 -cap_models no -cap_ground gnd! -cap_extract_mode coupled \
#	-cap_coupling_factor 1.0 -array_vias_spacing auto -xref \
#	/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/inv.gnx,/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/inv.gdx
set -e
set -v
##=======================================================
##ADD_EXPLICIT_VIAS=N
##ADD_BULK_TERMINAL=N
##AGDS_FILE=/dev/null
##AGDS_LAYER_MAP_FILE=/dev/null
##HCCI_DEV_PROP_FILE=/dev/null
##AGDS_SPICE_FILE=/dev/null
##AGDS_TEXT_LAYERS=
##ARRAY_VIAS_SPACING=
##ASSURA_RUN_DIR=/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv
##ASSURA_RUN_NAME=inv
##BLACK_BOX_CELLS=/dev/null
##BREAK_WIDTH=
##CAP_COUPLING_FACTOR=1.0
##CAP_EXTRACT_MODE=coupled
##CAP_GROUND=gnd!
##CAP_MODELS=no
##DANGLINGR=N
##DENSITY_CHECK_METHOD=P
##DELETE_OUTPUT_FILE=N
##DEVICE_FINGER_DELIMITER='@'
##DF2=Y
##DRACULA_RUN_DIR=
##DRACULA_RUN_NAME=
##ENABLESENSITIVITYEXTRACTION=N
##EXCLUDE_FLOAT_LIMIT=
##EXCLUDE_FLOAT_DECOPULING_FACTOR=
##EXCLUDE_FLOATING_NETS=N
##EXCLUDE_NETS_REDUCERC=/dev/null
##EXCLUDE_SELF_CAPS=N
##IGNORE_GATE_DIFFUSION_FRINGING_CAP=Y
##EXTRACT=both
##EXTRACT_MOS_DIFFUSION_AP=N
##EXTRACT_MOS_DIFFUSION_HIGH=
##EXTRACT_MOS_DIFFUSION_RES=N
##FILTER_SIZE=2.0
##FIXED_NETS_FILE=/dev/null
##FMAX=
##FRACTURE_LENGTH_UNITS=MICRONS
##FREQUENCY_FILE=/dev/null
##GROUND_NETS=
##GROUND_NETS_FILE=/dev/null
##GROUND_SUBSTRATE_FLOATING_NETS=N
##HCCI_DEV_PROP=7
##HCCI_INST_PROP=6
##HCCI_NET_PROP=5
##HCCI_RULE_FILE=
##HCCI_RUN_DIR=
##HCCI_RUN_NAME=
##HEADER_FILE=/dev/null
##HIERARCHY_DELIMITER='/'
##OUTPUT_HIERARCHY_DELIMITER='/'
##HRCX_CELLS_FILE=/dev/null
##IMPORT_GLOBALS=Y
##LADDER_NETWORK=N
##LVS_SOURCE=assura
##M_FACTORR=
##M_FACTORW=N
##MACRO_CELL=Y
##MAX_FRACTURE_LENGTH=infinite
##MAX_SIGNALS=
##MERGE_PARALLEL_R=N
##MERGE_PARALLEL_VIA=N
##MINC=1e-17
##MINC_BY_PERCENTAGE=0.1
##MINR=0.001
##NET_NAME_SPACE=schematic
##NETS_FILE=/dev/null
##OUTPUT=/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/extview.tmp
##OUTPUT_NET_NAME_SPACE=layout
##PARASITIC_BLOCKING_DEVICE_CELLS_TYPE=gray
##PARASITIC_CAP_MODELS=no
##PARASITIC_RES_MODELS=comment
##PARASITIC_RES_LENGTH=N
##PARASITIC_RES_WIDTH=Y
##PARASITIC_RES_WIDTH_DRAWN=N
##PARASITIC_RES_UNIT=N
##PARTIAL_CAP_BLOCKING=N
##PEEC=N
##PIN_ORDER_FILE=/dev/null
##PIPE_ADVGEN=
##PIPE_SPICE2DB=
##POWER_NETS=
##POWER_NETS_FILE=/dev/null
##RC_FREQUENCY=
##RCXDIR=/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv
##RCXFS_HIGH=N
##RCXFS_NETS_FILE=
##RCXFS_TYPE=none
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_VIA_OFF=N
##REDUCERC=N
##REGION_LIMIT=
##RES_MODELS=no
##RISE_TIME=
##SAVE_FILL_SHAPES=N
##SINGLE_CAP_EDSPF=N
##SHOW_DIODES=N
##SKIN_FREQUENCY=
##SPEF=N
##SPEF_UNITS=
##SPLIT_PINS=N
##FORCE_SUBCELL_PIN_ORDERS=N
##SPLIT_PINS_DISTANCE=
##SUB_NODE_CHAR='#'
##SUBSTRATE_PROFILE=/dev/null
##SUBSTRATE_STAMPING_OFF=N
##TEMPDIR=/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/rcx_temp
##TEMPERATURE=25.0
##TYPE=full
##USER_REGION=/dev/null
##VARIANT_CELL_FILE=/dev/null
##VIA_EFFECT_OFF=N
##VIRTUAL_FILL=
##XREF=/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/inv.gnx,/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/inv.gdx
##XY_COORDINATES=c,r
##=======================================================

CASE_SENSITIVE=TRUE
export CASE_SENSITIVE
QRC_MOS_LW_PRECISION=y
export QRC_MOS_LW_PRECISION
TEMPDIR=`setTempDir /home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv/rcx_temp`
export TEMPDIR
DEVICE_FINGER_DELIMITER='@'
HIERARCHY_DELIMITER='/'
OUTPUT_HIERARCHY_DELIMITER='/'
cd /home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv
cat <<ENDCAT> caps2dversion
* caps2d version: 11
ENDCAT
cat <<ENDCAT> flattransUnit.info
meters
ENDCAT
QRC=Y
export QRC
cat <<ENDCAT> topcellxcn.info
/home/oj23092/VLSI_Design_Lab/ASSURA_LVS/inv/inv.xcn
ENDCAT
