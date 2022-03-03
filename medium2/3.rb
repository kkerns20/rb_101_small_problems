=begin
Problem
------------------------------------------
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

Inputs: 1 String
Outputs: 1 Hash

Rules/Requirements
- There will be atleast one char in string

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> iterate through chars in string, count lowercase, upper case, and neither characters, divide by string length and save as hash

- initialize hash lowercase to 0, uppercase to 0 and neither to 0
- create upper alpha array
- create lower alpha array
- iterate through the chars in input string
  - if upper alpha includes the char
    - increment uppercase by 1
  - if lower alpha includes the car
     - increment lowercase by 1
  - else
    - increment neither by 1
- iterate through hash values with tranformation
  - float div by string's chars size and truncate to 1 dec place

=end

def letter_percentages(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  upper_alpha = ('A'..'Z').to_a
  lower_alpha = ('a'..'z').to_a
  string.each_char do |char|
    if upper_alpha.include?(char)
      hash[:uppercase] += 1
    elsif lower_alpha.include?(char)
      hash[:lowercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash.transform_values do |v|
    (v.fdiv(string.length) * 100).round(1) 
  end
end

# def letter_percentages(string)
#   size = string.size.to_f / 100
#   percentages = {
#     lowercase: (string.count('a-z') / size).round(1),
#     uppercase: string.count('A-Z') / size.round(1),
#     neither: string.count('^a-zA-Z') / size.round(1)
#   }
# end

p letter_percentages('asA')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
