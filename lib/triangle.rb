class Triangle
 attr_accessor :x, :y, :z
 
 def initialize(x,y,z)
  @x=x
  @y=y
  @z=z
  @all= [@x,@y,@z]
 end

def valid?
  sum_one_two = @all[0]+@all[1]
  sum_one_three = @all[0]+@all[2]
  sum_two_three = @all[1]+@all[2]
  if (@x>=0 && @y>=0 && @z>=0) &&
    (@all.none? {|side| side <= 0}) &&
      (sum_one_two > @all[2] && 
      sum_one_three > @all[1] && 
      sum_two_three > @all[0])
      return true
    else
      return false
    end
  end

  def not_valid
    if @x<=0 || @y<=0 || @z<=0
      true
    elsif @x+@y<@z || @y+@z<@x ||@x+@z<@y 
      true
    else
      false
    end
  end
    

  def kind
    if valid?
      if @all.uniq.length == 1
        return :equilateral
      elsif @all.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
    not_valid
      raise TriangleError
    end

end

class TriangleError<StandardError
  def message
    "Nope"
  end
end

end
