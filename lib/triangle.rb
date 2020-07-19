class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
end

attr_accessor :side1, :side2, :side3

def kind 
  if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
    raise TriangleError
    
  elsif self.side1 + self.side2 <= self.side3 || self.side2 + self.side3 <= self.side1 || self.side3 + self.side1 <= self.side2
    raise TriangleError
    
    elsif self.side1 == self.side2 && self.side2 != self.side3 && self.side3 == self.side1
      :equilateral
