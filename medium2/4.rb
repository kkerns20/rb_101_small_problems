=begin
Problem
-----------------------------------------
Check to see if all parentheses in the string are balanced, return boolean

Inputs: 1 string
Outputs: boolean

Rules/Requirements
- must start with '('
- checking to see if they are equal in number will not help

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------

- delete everything from string by parentheses
- check if the string length is even AND
- check if string starts with '(' AND
- check if string ends with ')' OR
- string empty

=end

def balanced?(string)
  string = string.delete('^()')
  
  string.length.even? && 
    string.start_with?('(') && 
    string.end_with?(')') || 
    string.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What is) this?') == false
p balanced?('What ((is))) up(') == false
  
