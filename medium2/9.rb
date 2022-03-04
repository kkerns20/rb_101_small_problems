def bubble_sort!(array)
  n = array.length
  loop do
    swap_occurred = false
    (1..n - 1).each do |index|
      next if array[index] > array[index - 1]
      array[index], array[index - 1] = array[index - 1], array[index]
      swap_occurred = true
      # All elements after last swap are sorted; don't examine on next pass.
      n = index
    end
    break unless swap_occurred
  end
  array
end

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
