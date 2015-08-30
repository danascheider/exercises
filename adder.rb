class Adder
  def initialize n
    @orig, @num = n, n
  end

  def add num=@num
    return @num if num == 0
    @num += num - 1
    add num - 1
  end
end

adder = Adder.new ARGV[0].chomp.to_i
puts adder.add 