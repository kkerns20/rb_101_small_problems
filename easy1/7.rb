=begin
Problem
------------------------------------------
Create a method that takes one argument
- argument will be positive integer
- return a string of alternating 1s and 0s. always starting with 1

Inputs: integer
Outputs: string of 1s and 0s starting with 1

Rules/Requirements
- length should match given integer

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
6 => '101010'

Data Structure, Algorithm
------------------------------------------
create stringy to accept an integer
  - create empty str for output
  - if integer is even
    - append '10' times half the integer to output
  - if integer odd
    - append '10' times half the integer to output plus '1'
  return output

=end

def stringy(int)
  output = ''
  if int.even?
    integer_even_output(output, int)
  else
    integer_even_output(output, int)
    output << '1'
  end
end

def integer_even_output(output, int)
  output << '10' * (int / 2)
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# puts stringy(6, 0) == '010101'
# puts stringy(9, 0) == '010101010'
# puts stringy(4, 0) == '0101'
# puts stringy(7, 0) == '0101010'