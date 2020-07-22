class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def legal?
    true unless @sides.find {|s| s <= 0} || (@sides.sort[2] >= @sides.sort[0] + @sides.sort[1])
  end

  def kind
    raise TriangleError unless legal?
    if @a == @b && @a == @c
      return :equilateral
    elsif @a == @b || @b == @c || @a == @c
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end
