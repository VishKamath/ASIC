#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Fri Oct 16 12:55:26 2026                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v22.11-s001_1 (64bit) 09/16/2022 15:45 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 22.11-s001_1 NR220910-1931/22_11-UB (database version 18.20.592) {superthreading v2.19}
#@(#)CDS: AAE 22.11-e006 (64bit) 09/16/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 22.11-e010_1 () Sep  5 2022 07:16:46 ( )
#@(#)CDS: SYNTECH 22.11-e002_1 () Aug  2 2022 07:54:00 ( )
#@(#)CDS: CPE v22.11-e028

read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/NETLIST/setup_hold.v
set_top_module setup_hold_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/SDC/01_setup_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/NETLIST/setup_hold.v
set_top_module setup_hold_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/SDC/02_setup_fixed.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/NETLIST/hold_fail.v
set_top_module hold_fail_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/SDC/03_hold_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/NETLIST/hold_fail.v
set_top_module hold_fail_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB01_SETUP_HOLD/SDC/04_hold_fixed.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/NETLIST/skew_setup_fail.v
set_top_module skew_setup_fail_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/SDC/01_negative_skew_setup_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/NETLIST/skew_setup_fail.v
set_top_module skew_setup_fail_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/SDC/02_negative_skew_setup_fixed.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/NETLIST/skew_hold_fail.v
set_top_module skew_hold_fail_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/SDC/03_positive_skew_hold_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/NETLIST/skew_hold_fail.v
set_top_module skew_hold_fail_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB02_CLOCK_SKEW/SDC/04_positive_skew_hold_fixed.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/NETLIST/mcp.v
set_top_module mcp_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/SDC/01_normal_setup_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/NETLIST/mcp.v
set_top_module mcp_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/SDC/02_mcp2_setup_pass.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/NETLIST/mcp.v
set_top_module mcp_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/SDC/03_mcp2_setup_hold_corrected.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/NETLIST/mcp.v
set_top_module mcp_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/SDC/04_mcp2_short_period_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/NETLIST/mcp.v
set_top_module mcp_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB03_MULTICYCLE/SDC/05_mcp3_pass.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/NETLIST/half_cycle.v
set_top_module half_cycle_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/SDC/01_half_setup_fail.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/NETLIST/half_cycle.v
set_top_module half_cycle_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/SDC/02_half_setup_fixed.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/NETLIST/half_cycle.v
set_top_module half_cycle_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB04_HALF_CYCLE/SDC/03_half_hold_check.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB05_FALSE_PATH/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB05_FALSE_PATH/NETLIST/false_path.v
set_top_module false_path_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB05_FALSE_PATH/SDC/01_before_false_path.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
read_lib /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB05_FALSE_PATH/LIB/teaching_sta.lib
read_verilog /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB05_FALSE_PATH/NETLIST/false_path.v
set_top_module false_path_top
read_sdc /home/vlsi14/24BVD1042/lab9/STA_SMS/LAB05_FALSE_PATH/SDC/02_after_false_path.sdc
report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt
free_design
exit
