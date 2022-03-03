=begin
Problem
------------------------------------------
Given a collection of spelling blocks, determine if you can make the word input with the blocks

Inputs: 1 String
Outputs: Boolean

Rules/Requirements
- Limits on the words that you can write and can't use both letters on the same block
- block can only be used once

- check to see if letter is used and only once
- make sure the other letter on block is not used

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'BATCH'
B is on a block and only in the string once, and O is not used
A is on a block and only in the string once, and N is not used
T is on a block and only in the string once, and N is not used

Data Structure, Algorithm
------------------------------------------
==> Check to see if the string is only uniq characters, check to see if each char is used only once and that its other letter is not used at all

- Initialize nested array to represent each block

-split the input string into an array of separate characters and uppercase all letters
-iterate through this nested array
  -for each sub-array, if only one of the letters is included in the character array, delete it from the
  character array and move onto the next iteration
  -if both letters in the sub-array are included in the character array, return false
-return true at the very end if character array is empty



=end

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(string)
  word_arr = string.upcase.chars
  BLOCKS.each do |block|
    if word_arr.include?(block.first) && !word_arr.include?(block.last)
      word_arr.delete(block.first)
    elsif !word_arr.include?(block.first) && word_arr.include?(block.last)
      word_arr.delete(block.last)
    elsif word_arr.include?(block.first) && word_arr.include?(block.last)
      return false
    end
  end
  return true if word_arr.empty?
  false      
end


# LS Solution

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

p block_word?('sdf')
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
