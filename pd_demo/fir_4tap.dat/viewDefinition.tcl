if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name MAX_DELAY\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_library_set -name MIN_DELAY\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_delay_corner -name MAXDELAY\
   -library_set MAX_DELAY
create_delay_corner -name MINDELAY\
   -library_set MIN_DELAY
create_constraint_mode -name Constraints\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/fir_4tap.sdc]
create_analysis_view -name WORST_CASE -constraint_mode Constraints -delay_corner MAXDELAY
create_analysis_view -name BEST_CASE -constraint_mode Constraints -delay_corner MINDELAY
