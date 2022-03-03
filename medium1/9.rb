def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, (first + last) % 10]
  end

  last
end

# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

# Further Exploration
# last digits repeat every 60th number in the sequence

def fibonacci_last2(nth)
  first, last = [1, 1]
  sequence_count = 2
  if nth % 60 == 0
    return 0
  else
    3.upto(nth % 60) do
      first, last = [last, (first + last) % 10]
    end
    last
  end
end

p fibonacci_last2(123_456_789_987_745) == 5
