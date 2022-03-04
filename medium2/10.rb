=begin
-initialize array from 1 up to n
- initialize array of squared values from array by iterating with transformation to square the values
- return the difference between the two arrays
=end

# def sum_square_difference(n)
#   list = 1.upto(n).to_a
#   list_sum_squared = list.sum ** 2
#   squared_list_sum = list.map { |x| x ** 2 }.sum
#   list_sum_squared - squared_list_sum
# end

def sum_square_difference(n)
  sum_squared = (1..n).sum ** 2
  squared_sum = (1..n).sum(&:abs2)
  sum_squared - squared_sum
end
  

p sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
