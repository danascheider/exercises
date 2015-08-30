class RecursiveReverser
  def initialize str
    @original, @string, @reversed = str, str.dup, ''
  end

  def reverse
    return @reversed if @reversed.length == @original.length
    @reversed += @string[-1]
    @string.chop!
    reverse
  end
end

reverser = RecursiveReverser.new ARGV.join(' ')
puts reverser.reverse