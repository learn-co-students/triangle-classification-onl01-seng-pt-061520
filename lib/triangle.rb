class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

  end
  
  def kind
    sides = [@side_1, @side_2, @side_3]
    if (@side_1 > 0 && @side_2 > 0 && @side_3 > 0) && ((@side_1 + @side_2 > @side_3) && (@side_1 + @side_3 > @side_2) && (@side_2 + @side_3 > @side_1))
      if sides.uniq.length == 1
        :equilateral
      elsif sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
