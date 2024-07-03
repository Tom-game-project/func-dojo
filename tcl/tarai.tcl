
# proc tarai {x} {
# }

# tarai 2




# proc make_adder {x} {return "{y} {expr $x + \$y}"}

proc main {a b} {
    proc add {a b} {
        return [expr $a + $b]
    }
    return [add $a $b]
}

proc make_adder {x} {return "{y} {expr $x + \$y}"}

proc f {x} {
    return "{y} {
        if {$x > \$y} {
            return hello
        } else {
            return world
        }
    }"
}



set add10 [make_adder 10]

#set x
set iffunc [f 1] 

puts [apply $add10 100]

puts [apply $iffunc 2]

puts [main 1 2]


