=begin
Problem
------------------------------------------
Given a matrix, transpose the matrix, swapping rows and columns

Inputs: 1 Nested array
Outputs: 1 Nested array

Rules/Requirements
- don't transform input array

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- initialize hash to first row to [] second row to [] third row to []

- iterate through input matrix
  - append element at index 0 to first row
  - append ele at idx 1 to second
  - append ele at idx 2 to third
return hash values as array

=end

def transpose(matrix)
  hash = {first_row: [], second_row: [], third_row: [] }
  matrix.each do |sub_array|
    hash[:first_row] << sub_array[0]
    hash[:second_row] << sub_array[1]    
    hash[:third_row] << sub_array[2]
  end
  hash.values
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
  
