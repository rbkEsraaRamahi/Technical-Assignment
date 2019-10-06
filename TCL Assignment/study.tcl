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

# /////////////////////////////////////////////////////////////////////////////////////////

# proc reverse {a} \
# {
#     set leng [llength $a];
#     set newList {};
#     
#     for { set i 1 }  { $i <= $leng } { incr i } {
#         append newList " " [lindex $a [expr { $leng - $i }]] 
#     }
#     
#     append newList " ";
#     
#     puts [list $newList];
# };

# reverse { 3 6 8 7 0 1 4 2 9 5 };
# reverse { TCL is a Tool Command Language };
# reverse { Welcome to you };

# ////////////////////////////////////////////////////////////////////////////////

# proc reverse2 {L} \
# {
#     set newList " ";
#     append newList [lreverse $L];
#     append newList " ";

#     puts [list $newList];
# };

# reverse2 { 3 6 8 7 0 1 4 2 9 5 };