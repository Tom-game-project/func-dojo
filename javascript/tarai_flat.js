
let i = 0;
// 関数を並列させる実装

function f2_0(local2x,local2y,z){return local2y;}

function f2_1(local2x,local2y,z){
    let nx = tarai2 (local2x - 1, local2y, z);
    let ny = tarai2 (local2y - 1, z, local2x);
    let nz = tarai2 (z - 1, local2x, local2y);
    return tarai2(nx,ny,nz);
}

function f1(local1x,y){
    if (local1x <= y){
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