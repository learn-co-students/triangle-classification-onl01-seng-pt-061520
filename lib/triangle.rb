class Triangle
  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind()
    raise TriangleError if (@length1 <= 0) || (@length2 <= 0) || (@length3 <= 0)
    raise TriangleError if (@length1+@length2 <= @length3) || (@length1+@length3 <= @length2) || (@length2+@length3 <= @length1)
    return :equilateral if (@length1 == @length2) && (@length2 == @length3)
    return :isosceles if (@length1 == @length2) || (@length2 == @length3) || (@length1 == @length3)
     return :scalene if (@length1 != @length2) && (@length2 != @length3) && (@length1 != @length3)
  
    end



class TriangleError < StandardError
end
end