require 'pry'
class Triangle
  # write code here
  attr_reader :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
       raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two || @side_two + @side_three <= @side_one
      raise TriangleError
    else
      triangle_ary = [@side_one, @side_two, @side_three]
      case triangle_ary.uniq.length
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "This triangle cannot exist"
    end
  end
end
