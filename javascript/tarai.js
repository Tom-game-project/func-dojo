let tarai = (x) => (y) => x <= y ? (_) => y:(z) => tarai(tarai(x - 1)(y)(z))(tarai(y - 1)(z)(x))(tarai(z - 1)(x)(y));
console.log(tarai(12)(6)(0));