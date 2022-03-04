=begin
Problem
------------------------------------------
Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

Inputs: 
Outputs: 

Rules/Requirements
- odd number
- multiple of 7
- digits are uniq

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- increment int by 1
- until int is featured
  - featured int
  - increment int
- return int

Helper
- if int is even or doesnt divide by 7 equally or digits are not uniq
  - return error message 
- return true

=end

def featured(num)
  loop do
    num += 1
    next unless num.odd? && num % 7 == 0
    return num unless num.digits != num.digits.uniq
    break if num >= 9_876_543_210
  end

  "There is no possible number that fulfills those requirements."
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
