# Rotation(Part 2)

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(integer, n)
  array = integer.to_s.chars
  
  if n == 1
    integer
  elsif n != array.size && n < array.size
    # binding.pry
    (array[0...-n] + array[(-n + 1)..-1] + [array[-n]]).join.to_i
  else
    rotate_array(array).join.to_i
  end
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# the solution from Launch School is so much more succinct

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end