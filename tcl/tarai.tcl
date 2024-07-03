

proc fff {x} {
    return "{$x} {
        {\$y} {
            {\$z} {
                puts $x \$y \$z
            }
        }
    }"
}

set f0 [apply fff 1]
set f1 [apply f0 2]
set f2 [apply f1 3]

f2

