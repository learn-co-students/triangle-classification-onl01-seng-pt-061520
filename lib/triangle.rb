class Triangle
  # write code here
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    triangle?
    if length_one == length_two && length_two == length_three
      :equilateral
    elsif length_one == length_two || length_one == length_three || length_two == length_three
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    triangle = [(length_one + length_two > length_three), (length_one + length_three > length_two), (length_two + length_three > length_one)]
    sides = [length_one, length_two, length_three]
    sides.each do |side|
      triangle << false if side <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end
  class TriangleError < StandardError
    puts "This is not a Triangle!"
  end
end
