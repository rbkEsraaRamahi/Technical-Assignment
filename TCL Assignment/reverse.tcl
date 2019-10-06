proc reverse {a} \
{
    set leng [llength $a];
    set newList {};
    set i 1; 
    
    while { $i <= $leng } {
      append newList " " [lindex $a [expr { $leng - $i }]]
      incr i
    }

    append newList " ";
    
    return [list $newList];
};


puts [reverse { TCL is a Tool Command Language }];
puts [reverse { Welcome to you }];


# ////////// Solve it by the build in fxn //////////////

proc reverse2 {L} \
{
    set newList " ";
    append newList [lreverse $L];
    append newList " ";

    return [list $newList];
};

puts [reverse2 { 3 6 8 7 0 1 4 2 9 5 }];