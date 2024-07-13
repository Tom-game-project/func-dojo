let i = 0;

function tarai(x){
    return function (y){
        //  .<-local x 
        if (x <= y){
            i++;
            return function(_){return y;}
        }
        else
        {
            i++;
            return function (z){
                return tarai(tarai(x - 1)(y)(z))(tarai(y - 1)(z)(x))(tarai(z - 1)(x)(y));
            }
        }
    }
}

console.log(tarai2(12)(6)(0))
console.log(i);