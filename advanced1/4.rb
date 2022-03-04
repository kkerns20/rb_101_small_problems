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
- initialize result to empty array
- determine number of rows in input
  - call count on input
- determine number of columns in input
  - count element at index 0
- 1 to column count - 1 iterate n
  - initialize the new row to the output of 
    - iterate from 0 up to rows count - 1 with transformation m
    - take element at position [m][n]
    - append to reulst
      
- return result

=end

def transpose(matrix)
  result = []
  rows = matrix.count
  columns = matrix[0].count
  (0...columns).each do |n|
    new_row = (0...rows).map { |m| matrix[m][n] }
    result << new_row
  end
  result
end


p transpose([[1, 2, 3, 4]])  == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
