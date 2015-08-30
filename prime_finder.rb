class PrimeFinder
  def initialize number
    @orig = number
  end

  def check number=@orig - 1
    if @orig % number == 0 && number > 1
      return false
    elsif number == 1
      return true
    end

    check number - 1
  end
end

finder = PrimeFinder.new ARGV[0].chomp.to_i
puts finder.check ? "The number #{ARGV[0]} is prime." : "The number #{ARGV[0]} is not prime."