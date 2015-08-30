class Exponentiator
  def initialize base, exp
    @orig = base
  end

  def exponentiate base, exp
    return base if exp == 1

    base *= @orig
    exponentiate base, exp - 1
  end
end