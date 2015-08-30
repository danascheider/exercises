class FibonacciFinder
  def initialize n 
    @orig, @fib = n, [0, 1]
  end

  def fibonacci
    return @fib.last if @fib.count == @orig
    @fib << @fib[-1] + @fib[-2]
    fibonacci
  end
end

finder = FibonacciFinder.new ARGV[0].chomp.to_i
puts finder.fibonacci