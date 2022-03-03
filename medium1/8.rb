=begin
Problem
------------------------------------------
Inputs: 1 Integer
Outputs: 1 Integer

Rules/Requirements
- Procedural Fibonacci Sequence

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- initialize sum to 0
- initialize arr to [1, 1]
- return 1 if the nth term is < 3
- from nth - 2 to nth times
  - sum arr
  - shift arr
  - add sum to arr
- return sum

=end

# def fibonacci(nth)
#   sum = 0
#   arr = [1, 1]
#   return 1 if nth <= 2
#   3.upto(nth) do |num|
#     sum = arr.sum
#     arr.shift
#     arr << sum
#   end
  
#   sum
# end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(3)

p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
