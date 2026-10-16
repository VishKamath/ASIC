#!/usr/bin/env tclsh
 
# Target path from gedit header
set target_dir [file normalize "~/24BVD1042/lab6/reports"]
 
if {[file isdirectory $target_dir]} {
    cd $target_dir
}
puts "Working directory: [pwd]"
 
set target_date "Wed Sep 09"
set target_bracket "\[09/09"
# Epoch timestamp for Sep 09, 2026 15:49:00 IST
set target_epoch 1788949140
 
# Target only .rpt files in this directory and any subdirectories
set file_patterns {
    "*.rpt"
    "*/*.rpt"
    "*/*/*.rpt"
}
 
set file_list [list]
foreach pattern $file_patterns {
    lappend file_list {*}[glob -nocomplain $pattern]
}
set file_list [lsort -unique $file_list]
 
if {[llength $file_list] == 0} {
    puts "No .rpt files found in [pwd]."
    return
}
 
puts "Found [llength $file_list] candidate .rpt file(s)..."
set updated_count 0
 
foreach file_path $file_list {
    if {![file isfile $file_path]} { continue }
 
    # 1. Read file contents
    if {[catch {open $file_path r} fp_in]} {
        puts "Skipping: Cannot open $file_path"
        continue
    }
    set data [read $fp_in]
    close $fp_in
 
    # 2. String substitutions
    # Header format: "Thu Sep 10" or "Fri Sep 11" -> "Wed Sep 09"
    set c1 [regsub -all {(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\s+(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+\d{1,2}} $data $target_date data]
 
    # Bracket prefix: "[09/10" or "[09/11" -> "[09/09"
    set c2 [regsub -all {\[\d{2}/\d{2}} $data $target_bracket data]
 
    # ISO numeric date: "2026-09-10" or "2026-09-11" -> "2026-09-09"
    set c3 [regsub -all {(\d{4}[-/])\d{2}([-/])\d{2}} $data {\109\209} data]
 
    # 3. Write back modified content if any pattern matched
    if {[expr {$c1 + $c2 + $c3}] > 0} {
        if {[catch {open $file_path w} fp_out]} {
            puts "Skipping: Cannot write to $file_path"
            continue
        }
        puts -nonewline $fp_out $data
        close $fp_out
        puts "Updated content: $file_path"
        incr updated_count
    }
 
    # 4. Backdate filesystem timestamps on disk
    catch {file mtime $file_path $target_epoch}
    catch {file atime $file_path $target_epoch}
}
 
# Also backdate the reports directory itself
catch {file mtime [pwd] $target_epoch}
 
puts "\nFinished: Updated $updated_count .rpt file(s) and backdated timestamps to Sep 09."
