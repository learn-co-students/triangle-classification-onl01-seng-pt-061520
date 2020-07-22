# class Triangle
#   # write code here
#   def initialize(side_1, side_2, side_3)
#     @triangle_sides = []
#     @triangle_sides << side_1
#     @triangle_sides << side_2
#     @triangle_sides << side_3
#   end
#   def valid?
#     sum_one_two = @triangle_sides[0] + @triangle_sides[1]
#     sum_one_three = @triangle_sides[0] + @triangle_sides[2]
#     sum_two_three = @triangle_sides[1] + @triangle_sides[2]

#     if (@triangle_sides.none? {|side| side <= 0}) &&
#       (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
#       return true
#     else
#       return false
#     end
#   end

#   def kind
#     if valid?
#       if @triangle_sides.uniq.length == 1
#         return :equilateral
#       elsif @triangle_sides.uniq.length == 2
#         return :isosceles
#       else
#         return :scalene
#       end
#     else
#       raise TriangleError
#     end
#   end
# end

# class TriangleError < StandardError
# end

class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
