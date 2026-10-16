#!/bin/csh -f
 
# 1. Initialize Cadence environment
source /home/install/cshrc
 
# 2. Create output directories
mkdir -p output/netlist
mkdir -p output/constraints
mkdir -p output/reports
 
# 3. Parameter sweep
set tech_nodes = ( 180nm 90nm 45nm )
set corners    = ( slow typical fast )
 
foreach node ( $tech_nodes )
  foreach corner ( $corners )
 
    echo "=========================================================="
    echo "Running Synthesis for: ${node} - ${corner}"
    echo "=========================================================="
 
    # Generate temporary TCL script
    cat << EOF > run_temp.tcl
set TOP_MODULE "fir_4tap_shared"
 
set_db init_lib_search_path /home/install/FOUNDRY/digital/${node}/dig/lib
read_libs ${corner}.lib
 
read_hdl {fir_4tap_shared_mult.v}
elaborate
read_sdc fir_4tap_shared_mult.sdc
 
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
 
syn_generic
write_hdl > output/netlist/\${TOP_MODULE}_${node}_${corner}_generic.v
 
syn_map
write_hdl > output/netlist/\${TOP_MODULE}_${node}_${corner}_mapped.v
 
syn_opt
write_hdl > output/netlist/\${TOP_MODULE}_${node}_${corner}_opt.v
 
write_sdc > output/constraints/\${TOP_MODULE}_${node}_${corner}_synth.sdc
 
report_timing > output/reports/\${TOP_MODULE}_${node}_${corner}_timing.rpt
report_power  > output/reports/\${TOP_MODULE}_${node}_${corner}_power.rpt
report_area   > output/reports/\${TOP_MODULE}_${node}_${corner}_area.rpt
report_gates  > output/reports/\${TOP_MODULE}_${node}_${corner}_gates.rpt
report_qor    > output/reports/\${TOP_MODULE}_${node}_${corner}_qor.rpt
 
exit
EOF
 
    # Run Genus batch
    genus -no_gui -batch -files run_temp.tcl
 
    # Remove temporary TCL file
    rm -f run_temp.tcl
 
  end
end
 
echo "=========================================================="
echo "All 9 synthesis runs completed successfully!"
echo "=========================================================="
