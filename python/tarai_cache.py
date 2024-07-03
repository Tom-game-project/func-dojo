from functools import cache

@cache
def tarai(x:int):
    @cache
    def f1(_x:int, y:int):
        if x <= y:
            def f2(_x:int,  _y:int, _z:int) -> int:return y
        else:
            @cache
            def f2(_x:int, _y:int, z:int) -> int:return tarai(tarai(x-1)(y)(z))(tarai(y-1)(z)(x))(tarai(z-1)(x)(y))
        return lambda z:f2(x,y,z)
    return lambda y:f1(x,y)

if __name__ == "__main__":
    print(tarai(12)(6)(0))