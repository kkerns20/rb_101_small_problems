def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# Seeing Stars

def star(n)
  puts top_half(n) + [middle(n)] + bottom_half(n)
end

def top_half(n)
  height = (n - 1) / 2
  height.times.each_with_object([]) do |row_index, rows|
    separator = ' ' * (height - row_index - 1)
    row = "*#{separator}*#{separator}*".center(n)
    rows << row
  end
end

def middle(n)
  '*' * n
end

def bottom_half(n)
  top_half(n).reverse
end

# Better: Array.new(3, '*).join(separator)

star(7)
star(9)

p star(7)
p star(11)
