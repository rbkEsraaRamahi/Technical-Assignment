proc sortList {L} \
{
    set pivot [lindex $L 0];
    set left {};  
    set right {};
    set result {};
    set equal {};

    if { [llength $L] < 2 } {
        return $L;
    }
    
    for { set i 0 }  { $i <= [llength $L] } { incr i } {
        if { [lindex $L $i] < $pivot } {
            lappend "left" [lindex $L $i];
        } elseif { [lindex $L $i] > $pivot } {
    	    lappend "right" [lindex $L $i];
        } else {
            lappend "equal" [lindex $L $i];
        }
    }
    
    return [concat [sortList $left] $equal [sortList $right]]
};
# puts [sortList { 5 }]
puts [sortList { 3 8 6 4 2 1 3 5 7 9 }] ;

