class Summer
  class << self
    def factorial n
      return n if n - 1 == 0
      n *= factorial(n - 1)
    end

    def add_up number
      number.to_s.split('').map(&:to_i).reduce(&:+)
    end
  end
end

p Summer.add_up(Summer.factorial(100))