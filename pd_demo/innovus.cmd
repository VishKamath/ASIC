#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Aug 28 11:51:52 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net VSS
set init_lef_file {../../../install/FOUNDRY/analog/90nm/lef/gpdk090.lef ../../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef}
set init_design_settop 0
set init_verilog fir/output/netlist/fir_4tap_opt.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
zoomBox -0.13300 -0.05100 0.18800 0.10400
zoomBox -0.00350 -0.00100 0.11700 0.05750
zoomBox -0.01800 -0.00650 0.12450 0.06250
zoomBox 0.02550 0.01050 0.10050 0.04700
zoomBox 0.05750 0.02350 0.08250 0.03550
zoomBox 0.00300 0.00200 0.11150 0.05450
zoomBox -0.18450 -0.07200 0.21450 0.12100
zoomBox -0.87500 -0.34300 0.59250 0.36650
zoomBox -3.41100 -1.33350 1.97850 1.27200
zoomBox -10.79550 -4.21900 6.01750 3.90950
zoomBox -39.81350 -15.55600 21.88850 14.27450
zoomBox -146.30450 -57.16200 80.13550 52.31350
zoomBox -1210.60000 -472.98050 662.28050 432.48900
zoomBox -537.11050 -209.85000 293.89750 191.91200
zoomBox -214.72550 -99.69450 153.99800 78.57000
pan 37.91450 139.64200
zoomBox -54.45550 -17.63450 84.61000 49.59850
zoomBox -26.46400 -9.59950 35.24050 20.23250
zoomBox -11.12300 -5.21450 8.65950 4.34950
zoomBox -7.65450 -4.22500 2.67200 0.76750
zoomBox -5.43800 -3.58650 -0.85600 -1.37150
zoomBox -4.52050 -3.12300 -0.62550 -1.24000
pan 1.28500 2.52350
zoomBox -17.63000 -7.17450 14.59600 8.40550
pan 0.13600 10.78500
zoomBox -20.44550 -7.56300 17.46750 10.76650
zoomBox -14.70150 -5.21600 12.69150 8.02750
zoomBox -12.45800 -4.29950 10.82600 6.95750
zoomBox -7.69900 -2.85200 6.60100 4.06150
zoomBox -3.48500 -1.57050 2.86050 1.49750
zoomBox -1.87850 -1.08200 1.43400 0.51950
zoomBox -1.04050 -0.82700 0.69000 0.00950
zoomBox -0.90350 -0.77750 0.56750 -0.06650
zoomBox -0.78900 -0.68450 0.46150 -0.08000
pan 0.00900 0.36400
zoomBox -0.61900 -0.31600 0.28500 0.12100
zoomBox -0.55600 -0.27350 0.21250 0.09800
zoomBox -0.38550 -0.15800 0.01600 0.03600
zoomBox -0.28300 -0.08850 -0.10350 -0.00150
zoomBox -0.42300 -0.18350 0.05650 0.04850
zoomBox -0.79300 -0.43500 0.48250 0.18150
zoomBox -8.19050 -5.46000 8.99950 2.85050
selectObject IO_Pin {yout[17]}
zoomBox -6.95300 -4.79800 7.65850 2.26600
zoomBox -15.74450 -9.37050 17.18750 6.55100
zoomBox -35.55750 -19.67400 38.66350 16.20900
zoomBox -64.80700 -29.93850 56.05000 28.49150
zoomBox -134.21800 -54.29550 97.30900 57.63950
deselectAll
pan 30.62900 88.55450
pan 23.80700 75.88500
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.975700934579 0.699984 8.0 8 8 8
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.862275449102 0.698353 8.12 8.12 8.12 8.12
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from left -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from left -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix fir_4tap_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal8(8) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal8(8) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix fir_4tap_preCTS -outDir timingReports
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report fir_4tap.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report fir_4tap.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
create_ccopt_clock_tree_spec
create_ccopt_clock_tree_spec
create_ccopt_clock_tree_spec
getIoFlowFlag
checkPlace fir_4tap.checkPlace
setDrawView place
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix fir_4tap_preCTS -outDir timingReports
setLayerPreference routeCongest -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix fir_4tap_preCTS -outDir timingReports
ecoPlace
create_ccopt_clock_tree_spec
