class Triangle
  attr_accessor :a, :b, :c, :kind

  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
    # if !(self.class.validity_check(a,b,c))
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #       puts error.message
    #   end
    # end
    # @kind = self.class.find_kind(a,b,c)
  end

  # def self.find_kind(a,b,c) #i set this up so you can find the kind of a triangle without needing to create an object
  #   if a==b && b==c
  #     return :equilateral
  #   elsif (a==b && b!=c) || (a==c && b!=c) || (b==c && a!=c)
  #     return :isosceles
  #   else
  #     return :scalene
  #   end
  # end

  def kind
    if !(self.class.validity_check(self.a,self.b,self.c))
      raise TriangleError
    elsif a==b && b==c
      return :equilateral
    elsif (a==b && b!=c) || (a==c && b!=c) || (b==c && a!=c)
      return :isosceles
    else
      return :scalene
    end
  end

  def self.validity_check(a,b,c)
    valid = (a>0 && b >0 && c>0) && (a+b>c) && (b+c>a) && (a+c>b)
  end


  class TriangleError < StandardError
    def message
      "This triangle is I N V A L I D !!!!!! The illuminati is unpleased."
    end
  end

end
