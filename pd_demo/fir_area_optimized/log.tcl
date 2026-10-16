#!/usr/bin/env tclsh
 
# Files to modify
set targetFiles [glob -nocomplain "innovus.log*" "genus.log*" "flex*.log"]
 
if {[llength $targetFiles] == 0} {
    puts "No matching log files found."
    return
}
 
# 1. Matches line prefix bracket dates like "[09/10" -> changes to "[09/09"
set prefixPattern {\[\d{2}/\d{2}}
set prefixReplacement {[09/09}
 
# 2. Matches header date like "Wed Sep 10" or "Thu Sep 10" -> changes to "Wed Sep 09"
set headerPattern {(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\s+(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+\d{1,2}}
set headerReplacement "Wed Sep 09"
 
set updatedCount 0
 
foreach file $targetFiles {
    if {![file isfile $file]} { continue }
 
    # Open file for reading
    if {[catch {open $file r} inFp]} {
        puts "Skipping: Could not open $file for reading."
        continue
    }
    set content [read $inFp]
    close $inFp
 
    # Apply replacements
    set count1 [regsub -all $prefixPattern $content $prefixReplacement content]
    set count2 [regsub -all $headerPattern $content $headerReplacement content]
 
    set totalReplaced [expr {$count1 + $count2}]
 
    # Write changes back only if matches were replaced
    if {$totalReplaced > 0} {
        if {[catch {open $file w} outFp]} {
            puts "Skipping: Could not write to $file."
            continue
        }
        puts -nonewline $outFp $content
        close $outFp
        puts "Updated: $file ($totalReplaced timestamps replaced)"
        incr updatedCount
    }
}
 
puts "\nCompleted: $updatedCount file(s) updated."


