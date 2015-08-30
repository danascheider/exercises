#!/usr/bin/env ruby

class Multiplier
  def initialize num, times
    @num   = num 
    @orig  = num
    @times = times
  end

  def num= num
    @num  = num
    @orig = num
  end

  def multiply
    return @num if @num === @orig * @times
    @num += @orig
    multiply
  end

  def execute
    result = multiply
  end
end

ARGV.map!(&:to_i)

m = Multiplier.new(ARGV[0], ARGV[1])
puts m.multiply