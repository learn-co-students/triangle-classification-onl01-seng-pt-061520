require "pry"
class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  attr_accessor :side1, :side2, :side3

  def error
    # begin
    #   raise TriangleError
    # rescue TriangleError => error
    #   puts error.message
    # end
    raise TriangleError
  end

  def kind
    # returns, as a symbol it's type
    #valid types are :equilateral, :isosceles, :scalene
    # binding.pry

    if self.side1 + self.side2 < self.side3
      error
    elsif self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      error
    elsif self.side1 + self.side2 <= self.side3 || self.side2 + self.side3 <= self.side1 || self.side3 + self.side1 <= self.side2
      error
    elsif self.side1 == self.side2 && self.side2 == self.side3 && self.side3 == self.side1
      :equilateral
    elsif self.side1 != self.side2 && self.side2 != self.side3 && self.side1 != self.side3
      :scalene
    elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
      :isosceles
    end

   end

  class TriangleError < StandardError
    def message
      "invalid Triangle"
    end
  end

end
