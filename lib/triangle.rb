class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind()
    #error for length if 0 or less 
    raise TriangleError if (@side1 <=0) || (@side2 <=0) || (@side3 <=0)
    #error for length if 2 sides longer than the third
    raise TriangleError if (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
    return :equilateral if (@side1 == @side2) && (@side2 == @side3) && (@side1 == @side3)
    return :isosceles if (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
    return :scalene if (@side1 != @side2) || (@side2 != @side3) || (@side1 != @side3)
  end
  

  
  class TriangleError < StandardError
   
  end 
  
end




#crap kind method. vinegar everywhere
=begin
  
  def kind(side1, side2, side3)
    
    if (side1*side2*side3) == 0 || (side1 + side2) > side3 || (side2 + side3) > side1 || (side1 + side3) > side2
      
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
      
    elsif side1 == side2 && side2 == side3 && (side1*side2*side3) != 0
      "equilateral"
      
    elsif (side1 == side2 || side2 == side3 || side1 == side3) && (side1*side2*side3) != 0
      "isosceles"
    else
      "scalene"
    end
    
  end
=end
