fn tarai(x: i32) -> Box<dyn Fn(i32) -> Box<dyn Fn(i32) -> i32>> {
    Box::new(move |y| {
        if x <= y {
            Box::new(move |_| y)
        } else {
            Box::new(move |z| tarai(tarai(x - 1)(y)(z))(tarai(y - 1)(z)(x))(tarai(z - 1)(x)(y)))
        }
    })
}


fn main(){
    println!("{}",tarai(12)(6)(0));
}