def egyptian(rat)
  denoms = []
  denom = 1.to_f
  sum = 0
  until sum == rat
    if sum + Rational(1, denom) <= rat
      denoms << denom.to_i
      sum += Rational(1, denom)
    end
    denom += 1
  end
  denoms
end

def unegyptian(denoms)
  rat = 0
  denoms.each do |denom|
    rat += Rational(1, denom)
  end
  rat
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9,
# 10, 15, 230, 57960]
p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
