=begin
Problem
------------------------------------------
Count the number of occurencesw of each element in given array.


Inputs: array of strings 
Outputs: element => count

Rules/Requirements
- words are case sensitive

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create empty hash
loop through array for uniq elements
  - add each occurrence of the element with its count of that element
loop through occurrence of the elements and use string interpolation to output element and count

=end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |ele|
    occurrences[ele] = array.count(ele)
  end

  occurrences.each do |ele, count|
    puts "#{ele} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)