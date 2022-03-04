# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

def diamond(n)
  [*(1..n).step(2), 
   *(n-2..1).step(-2)]
   .each { |x| puts ('*' * x).center(n) }
end

p diamond(1)
p diamond(3)
p diamond(9)
p diamond(12)
