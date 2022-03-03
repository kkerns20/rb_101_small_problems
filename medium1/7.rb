=begin
Problem
------------------------------------------
Write a nth Fibonnaci method, where nth is the argument

Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
Fib(1) = 1
Fib(2) = 1
Fib(3) = Fib(2) + Fib(1)
Fib(4) = fib(3) + fib(2)

Data Structure, Algorithm
------------------------------------------


=end

def fibonacci(nth)
  if nth < 2
    nth
  else
    fibonacci(nth - 1) + fibonacci(nth - 2)
  end
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
