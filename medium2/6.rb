=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- create array of triangle sides and sort it.
- return :invalid if any sides == 0 or sum of array is not equal to 180
- return :right if any side equals 90
- return ;acute if all sides are less than 90
- else return obtuse

=end

def triangle(a, b, c)
  sides = [a, b, c].sort
  return :invalid if sides.sum != 180 || sides.any?(0)
  if sides[-1] == 90
    :right
  elsif sides[-1] > 90
    :obtuse
  else
    :acute
  end
end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3].sort
  return :invalid if angles.sum != 180 || angles.include?(0)

  case angles.last
  when 0...90 then :acute
  when 90 then :right
  else :obtuse
  end
end

p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(60, 70, 50) == :acute
p triangle(50, 50, 50) == :invalid
  
