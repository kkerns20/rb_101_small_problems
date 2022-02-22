=begin
P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Write a method with one argument.

Inputs: 1 string
Outputs: 1 Array containing 0 or more strings
  - Output is a new object, not a mutated one
  - Output order: Examples show that the ouput array must appear in the same order as the appear in input string.

Explicit Requirements
  - Words are separated by exactly one space.
  - Any substring of a non_space character is a word
    - i.e. 'it?' is a word of length 3

Implicit Requirements
  - Return empty string as empty array
  - Number of array elements is the number of words in string

Clarifying Questions
  - What is a substring?
    - a word which is a string of consectutive characters separated by exactly one space
    - Must be the same legth or shorter than the given array.
- Return new object or mutate existing one? New object
- Input data types always the same? yes, a string
- Does output order matter? output order based on input order.
- Should we account for repeated terms?


E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []


Case: 
Inputs: "cow sheep chicken"
Outputs: ["cow 3", "sheep 5", "chicken 7"]
Step-by-step:
1. Retrieve all possible words:
- cow
- sheep
- chicken
2. Identify word length
3. Use string interpolation to add the word length to a new string containing the word
4. pass to a result array

Return empty array if input is empty string.

D: Data Structure
--------------------------------------------------------------------------------
use an Array to store the result. Why?
- Output must be in array format
- Iteration will be useful


A: Algorithm
--------------------------------------------------------------------------------
High-level: Find all words delimited by exactly one space and return an array of string that include that word, a space, and the word's length


Pseudo-code:
Use helper method find_words to find all words delimited by exactly one space

define word_lengths method with one argument str
  - initialize arr for words array
  - iterate through all of the strings in the array find_words, and interpolate that word's length into the array
  - return the array


Helper Methods:
define find_words to accept one argument str
  - split the string into an array based on ' '
  
Without the helper method:
Split the string into an array 
iterate and capture the return of the iteration
Interpolate each word with its length


C: Code
--------------------------------------------------------------------------------
=end

# def find_words(str)
#   str.split
# end

# def word_lengths(str)
#   arr = find_words(str)
#   arr.map do |word|
#     "#{word} #{word.length}"
#   end
# end

def word_lengths(str)
  str.split.map { |w| "#{w} #{w.length}" }
end
  
  
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
