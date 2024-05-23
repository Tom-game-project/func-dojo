tarai:int = lambda x:lambda y:(lambda _:y) if x <= y else lambda z:tarai(tarai(x-1)(y)(z))(tarai(y-1)(z)(x))(tarai(z-1)(x)(y))
print(tarai(12)(6)(0))