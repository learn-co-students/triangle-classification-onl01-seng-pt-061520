class Triangle

  attr_accessor :length_one, :length_two, :length_three
  # write code here
  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  class TriangleError < StandardError
  end

  def kind
    if(length_one * length_two * length_three) == 0 || (length_one + length_two) <= length_three || (length_two + length_three) <= length_one || (length_three + length_one) <= length_two
      begin
        raise TriangleError
        puts error.message
      end
   
    elsif length_one == length_two && length_two == length_three
      :equilateral
    elsif length_one == length_two || length_one == length_three || length_two == length_three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end