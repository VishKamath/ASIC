if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name maxdelay\
   -library_set slow
create_delay_corner -name mindelay\
   -library_set fast
create_constraint_mode -name c\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name worst -constraint_mode c -delay_corner maxdelay
create_analysis_view -name best -constraint_mode c -delay_corner mindelay
set_analysis_view -setup [list best] -hold [list worst]
