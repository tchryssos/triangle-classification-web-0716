require 'pry'

class Triangle

  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a=side_a
    @side_b=side_b
    @side_c=side_c
  end

  def kind
    test_a, test_b, test_c = [@side_a, @side_b, @side_c].sort
    raise TriangleError if test_a<=0 || test_a+test_b<=test_c
    case [@side_a, @side_b, @side_c].uniq.size
      when 1 
        :equilateral
      when 2
        :isosceles
      else
        :scalene
    end
  end
end

class TriangleError<StandardError
  "Hey bro, gotta check the lengths of your sides. Somethin' ain't right."
end