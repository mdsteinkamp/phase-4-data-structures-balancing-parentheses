require_relative './stack'

def balancing_parentheses(input)
  my_stack = Stack.new
  input.chars.each do |c|

    if my_stack.peek == "(" && c == ")"
      my_stack.pop
    else my_stack.push(c)
    end
  end
  my_stack.size
end

p balancing_parentheses("()")
p balancing_parentheses(')()()')
p balancing_parentheses('(()()(()')
p balancing_parentheses('))))((((')