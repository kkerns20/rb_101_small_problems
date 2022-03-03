=begin
Problem
------------------------------------------
Build a stack machine and either push values on

Inputs:  1 String
Outputs: 1 Integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'5 PUSH 3 MULT PRINT'

5 is pushed to stack
3 is multiplied into stack
15 is ouput to console

Data Structure, Algorithm
------------------------------------------
==> Split the string, Print the stack is string starts with Print, otherwise, through the string array through a case when
=end

VALID_COMMANDS = ['push', 'pop', 'add', 'sub', 'mult', 'div', 'mod', 'print']
STACK_COMMANDS = ['pop', 'add', 'sub', 'mult', 'div', 'mod']

def valid_command?(command, stack)
  if (stack.empty? && STACK_COMMANDS.include?(command)) ||
       (VALID_COMMANDS.include?(command) || command.match?(/[0-9]/)) == false
    return false
  end

  true
end

def minilang(program)
  register = 0
  stack = []

  program.downcase.split.each do |command|
    unless valid_command?(command, stack)
      puts "Error. Invalid command."
    break
    end
    case command
    when /[0-9]/ then register = command.to_i
    when 'push'  then stack.push(register)
    when 'pop'   then register = stack.pop
    when 'add'   then register += stack.pop
    when 'sub'   then register -= stack.pop
    when 'mult'  then register *= stack.pop
    when 'div'   then register /= stack.pop
    when 'mod'   then register %= stack.pop
    when 'print' then puts register
    end
  end
end

  

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

puts minilang('HEY') == 'Error. Invalid comman.'
# true

puts minilang('5 MULT PRINT') == 'Error. Invalid command.'
# true

puts minilang('5 PRINT PUSH 3 PRINT ADD PRINT') == 8
