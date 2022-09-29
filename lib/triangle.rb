require 'pry'

class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.a <= 0 || self.b <= 0 || self.c <= 0
      raise TriangleError

    elsif self.a + self.b <= self.c || self.b + self.c <= self.a || self.a + self.c <= self.b
      # 
      puts "Triangle Inequality"
      raise TriangleError

    elsif self.a == self.b && self.a == self.c
       :equilateral

    elsif self.a == self.b || self.b == self.c || self.c == self.a
      :isosceles

    else
       :scalene
    end
  end

  class TriangleError < StandardError
  end

  

end

# puts Triangle.new(2,4,2).kind




# binding.pry