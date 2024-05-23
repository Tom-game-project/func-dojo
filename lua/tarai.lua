local function tarai(x)
  return function(y)
    if x <= y then
      return function(_)
        return y;
      end;
    else
      return function(z)
        return tarai(tarai(x - 1)(y)(z))(tarai(y - 1)(z)(x))(tarai(z - 1)(x)(y));
      end;
    end
  end;
end

print (tarai(12)(6)(0))