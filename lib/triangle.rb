require 'pry'

class Triangle
  
  attr_reader :sides
  def initialize(l1, l2, l3)
    @sides = []
    @sides.push(l1, l2, l3)
  end

  def kind
    sides.each do |s| 
      raise TriangleError if s <= 0
    end
    raise TriangleError if sides[0] + sides[1] <= sides[2] || sides[0] + sides[2] <= sides[1] || sides[1] + sides[2] <= sides[0]
    return :equilateral if sides[0] == sides[1] && sides[1] == sides[2]
    return :isosceles if sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2]
    return :scalene if sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2]
  end

  class TriangleError < StandardError
  end
end
# binding.pry
# 0