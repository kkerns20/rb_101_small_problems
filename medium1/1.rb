# Rotation (part 1)

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(str)
  array = str.chars
  rotate_array(array).join
end

p rotate_string("test") == "estt"

def rotate_integers(int)
  array = int.to_s.chars
  rotate_array(array).join.to_i
end

p rotate_integers(123456) == 234561
p y = 23495
p rotate_integers(y) == 34952
p y == 23495