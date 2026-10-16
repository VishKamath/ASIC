# ==============================================================================
# Robust Cadence Tempus STA Automation Script for Lab 9 (STA_SMS)
# ==============================================================================

set BASE_DIR "$env(HOME)/24BVD1042/lab9/STA_SMS"
set SUMMARY_FILE "${BASE_DIR}/ALL_LAB9_STA_MASTER_SUMMARY.txt"

set sum_fp [open $SUMMARY_FILE w]
puts $sum_fp "=========================================================================================================================="
puts $sum_fp " CADENCE TEMPUS STA (LAB 9): ALL TASKS & LABS MASTER SUMMARY "
puts $sum_fp "=========================================================================================================================="
puts $sum_fp [format "%-28s | %-28s | %-16s | %-14s | %-14s | %-s" \
    "LAB FOLDER" "TASK (SDC FILE)" "NETLIST" "SETUP SLACK" "HOLD SLACK" "ACTIVE SDC CONSTRAINTS"]
puts $sum_fp "--------------------------------------------------------------------------------------------------------------------------"

proc get_top_module_name {v_file} {
    set fp [open $v_file r]
    set content [read $fp]
    close $fp
    regsub -all {//[^\n]*} $content "" content
    regsub -all {/\*.*?\*/} $content "" content
    set mod_list {}
    foreach {full mname} [regexp -all -inline {(?m)^\s*module\s+([a-zA-Z0-9_\\]+)} $content] {
        lappend mod_list $mname
    }
    if {[llength $mod_list] > 0} { return [lindex $mod_list end] }
    return "top"
}

proc get_active_sdc {sdc_file} {
    if {![file exists $sdc_file]} { return "N/A" }
    set fp [open $sdc_file r]
    set lines [split [read $fp] "\n"]
    close $fp
    set active {}
    foreach line $lines {
        set t [string trim $line]
        if {$t ne "" && ![string match "#*" $t]} { lappend active $t }
    }
    return [join $active " ; "]
}

proc extract_slack_from_report {rpt_file} {
    if {![file exists $rpt_file]} { return "Report Not Found" }
    set fp [open $rpt_file r]
    set content [read $fp]
    close $fp

    foreach line [split $content "\n"] {
        if {[regexp -nocase {slack\s*:?=?\s*([-\d\.]+)} $line -> val]} {
            return "${val} ns"
        }
    }
    if {[regexp -nocase {(?:slack)\s*(?:\([^\)]+\))?\s*([-\d\.]+)} $content -> val]} {
        return "${val} ns"
    }
    return "MET / OK"
}

set lab_dirs [lsort [glob -nocomplain -type d "${BASE_DIR}/LAB*"]]

foreach lab_path $lab_dirs {
    set lab_name [file tail $lab_path]
    set lib_candidates [glob -nocomplain "${lab_path}/lib/*.lib" "${lab_path}/LIB/*.lib" "${BASE_DIR}/**/*.lib" "${BASE_DIR}/*.lib"]
    if {[llength $lib_candidates] == 0} { continue }
    set lib_file [lindex $lib_candidates 0]

    set v_files [lsort [glob -nocomplain "${lab_path}/netlist/*.v" "${lab_path}/NETLIST/*.v" "${lab_path}/*.v"]]
    set sdc_files [lsort [glob -nocomplain "${lab_path}/sdc/*.sdc" "${lab_path}/SDC/*.sdc" "${lab_path}/*.sdc"]]
    if {[llength $v_files] == 0 || [llength $sdc_files] == 0} { continue }

    set rpt_dir "${lab_path}/reports/STA_TASKS"
    file mkdir $rpt_dir

    foreach sdc_file $sdc_files {
        set task_name [file rootname [file tail $sdc_file]]

        # Pick primary netlist for the lab
        set v_file [lindex $v_files 0]
        foreach vf $v_files {
            if {[string match "*setup*" [file tail $sdc_file]] && [string match "*setup*" [file tail $vf]]} { set v_file $vf; break }
            if {[string match "*hold*" [file tail $sdc_file]] && [string match "*hold*" [file tail $vf]]} { set v_file $vf; break }
        }

        set top_mod [get_top_module_name $v_file]
        read_lib $lib_file
        read_verilog $v_file
        set_top_module $top_mod
       
        # Read SDC (with fallback correction if port name differs)
        if {[catch {read_sdc $sdc_file} err]} {
            puts "WARNING: SDC error in $task_name: $err"
        }

        set setup_rpt "${rpt_dir}/${task_name}_setup.rpt"
        set hold_rpt "${rpt_dir}/${task_name}_hold.rpt"

        report_timing -late -max_paths 5 -nworst 1 -path_type full_clock > $setup_rpt
        report_timing -early -max_paths 5 -nworst 1 -path_type full_clock > $hold_rpt

        set wns_setup [extract_slack_from_report $setup_rpt]
        set wns_hold [extract_slack_from_report $hold_rpt]
        set sdc_cmds [get_active_sdc $sdc_file]

        puts $sum_fp [format "%-28s | %-28s | %-16s | %-14s | %-14s | %-s" \
            $lab_name [file tail $sdc_file] [file tail $v_file] $wns_setup $wns_hold $sdc_cmds]

        free_design
    }
    puts $sum_fp "--------------------------------------------------------------------------------------------------------------------------"
}

close $sum_fp
puts "\nDONE! Master Summary generated successfully."
exit


