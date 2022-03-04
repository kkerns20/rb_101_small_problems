=begin
Problem
------------------------------------------
given three integers as an argument, determine if it is a valid triangle and what type

Inputs: 3 integers
Outputs: 1 symbol

Rules/Requirements
- the sum of the two shortest sides must be greater than the longest side
- all sides must have length greater than 0
- return either
  :equilateral --> all sides equal
  :isosceles --> two sides equal
  :scalene --> no sides equal
  :invalid --> either has a 0 side or two sides arent graeater than third

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> Check and see if its a valid triangle, if it is, check what type of triange and return that symbol

-- method --> triangle(a, b, c) --> symbol
- take all three sides and see if any equal 0
  - if so, return invalid
- if the sum of two sides is greater than the third
  - determine what type of triangle
  
-- Helper method --> triangle type
- if all side are equal
  - return :equilateral
- if two sides are equal
  - return :isoceles
- if no sides equal
  - return :scalene
  


=end

def triangle(a, b, c)
  invalid?(a, b, c) ? :invalid : triangle_type(a, b, c)  
end

def triangle_type(a, b, c)
  if a == b && b == c
    :equilateral
  elsif a == b && b != c || a == c && c != b || 
      b == c && c != a
    :isosceles
  else
    :scalene
  end
end

def invalid?(a, b, c)
  a + b <= c || a + c <= b || b + c <= a ||
    a == 0 || b == 0 || c == 0
end

def triangle(a, b, c)
  sides = [a, b, c]
  return :invalid if sides.any?(0) 
  return :invalid if sides.sort.last >= sides.sort[0] + sides.sort[1]
  return :equilateral if sides[0] == sides[1] && sides[1] == sides[2]
  return :scalene if sides.uniq.size == 3
  :isosceles
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
