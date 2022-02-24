=begin
Problem
------------------------------------------
Given array of integers, return avaerage of all numbers in array

Inputs: array
Outputs: integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create method with one argument
  sum array to sum_arr
  divide by array size

=end

def average(arr)
  arr.sum / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40