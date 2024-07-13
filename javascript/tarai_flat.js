
let i = 0;
// 関数を並列させる実装

function f2_0(x,y,z){return y;}

function f2_1(x,y,z){
    let nx = tarai2 (x - 1, y, z);
    let ny = tarai2 (y - 1, z, x);
    let nz = tarai2 (z - 1, x, y);
    return tarai2(nx,ny,nz);
}

function f1(x,y){
    if (x <= y){
        i++;
        return f2_0
    }
    else
    {
        i++;
        return f2_1
    }
}

function tarai2(x,y,z) {
    return f1(x,y)(x,y,z)
}

console.log(tarai2(12,6,0))
console.log(i);