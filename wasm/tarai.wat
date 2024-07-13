(module
    (table 2 funcref)
    (elem
        (i32.const 0)
        $f2_0
        $f2_1
    )

    (func $f2_0
        (param $x i32)
        (param $y i32)
        (param $z i32)
        (result i32)
        local.get $y
        return
    )

    (func $f2_1
        (param $x i32)
        (param $y i32)
        (param $z i32)
        (result i32)
        local.get $x
        i32.const 1
        i32.sub
        local.get $y
        local.get $z
        call $tarai
        local.get $y
        i32.const 1
        i32.sub
        local.get $z
        local.get $x
        call $tarai
        local.get $z
        i32.const 1
        i32.sub
        local.get $x
        local.get $y
        call $tarai
        call $tarai
        return
    )

    (func $f1
        (param $x i32)
        (param $y i32)
        (result i32)
        local.get $x
        local.get $y
        i32.le_s
        if
        i32.const 0 ;; ref to $f2_0
        return
        else
        i32.const 1 ;; ref to $f2_1
        return
        end
        unreachable
    )

    (type $tarai_return (func
                (param $x i32)
                (param $y i32)
                (param $z i32)
                (result i32)
    ))
    (func $tarai
        (param $x i32)
        (param $y i32)
        (param $z i32)
        (result i32)

        local.get $x
        local.get $y
        local.get $z
        local.get $x
        local.get $y
        call $f1
        call_indirect (type $tarai_return)
    )
    (export "tarai" (func $tarai))
)