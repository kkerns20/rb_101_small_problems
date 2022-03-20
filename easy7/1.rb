require 'pry-byebug'

s = "abcd\nefgh\nijkl\nmnop"

p diag_1_sym(s)

def diag_1_sym(s)
  words = s.split("\n")
  words[0].size
end