class Triangle
  
<<<<<<< HEAD
  # attr_accessor :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if
      @side_1 <= 0 ||  @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif
      @side_1 >= @side_2 + @side_3 ||  
      @side_2 >= @side_3 + @side_1 || 
      @side_3 >= @side_2 + @side_1
      raise TriangleError
    elsif
      @side_1 == @side_2 && @side_2 == @side_3
       :equilateral
    elsif 
      @side_2 == @side_3 && @side_1 != @side_2 ||  
      @side_1 == @side_3 && @side_1 != @side_2 || 
      @side_1 == @side_2 && @side_1 != @side_3
       :isosceles
    elsif  
      @side_2 != @side_3 && @side_1 != @side_2 && @side_3 != @side_1
        :scalene
    end
  end
  
   class TriangleError < StandardError
    
   end
=======
  attr_accessor :side_1_length, :side_2_length, :side_3_length
  def initialize(side_1_length, side_2_length, side_3_length)
    @side_1_length = side_1_length
    @side_2_length = side_2_length
    @side_3_length = side_3_length
  end 
  
    class TriangleError < StandardError
     
    end
  
  def kind
  if
    (@side_1_length <= 0) || (@side_2_length <= 0) || (@side_3_length <= 0)
      raise TriangleError
    end
  elsif @side_1_length == @side_2_length && @side_2_length == @side_3_length
     :equilateral
   elsif @side_2_length == @side_3_length && @side_1_length != @side_2_length ||  @side_1_length == @side_3_length && @side_1_length != @side_2_length ||  @side_1_length == @side_2_length && @side_1_length != @side_3_length
    :isosceles
  elsif  @side_2_length != @side_3_length && @side_1_length != @side_2_length && @side_3_length != @side_1_length
    :scalene
  end
  end
>>>>>>> 89290a219e8806e5b3d79963c55675b198799bc1
  
end
