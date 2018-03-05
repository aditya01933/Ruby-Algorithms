require_relative '../dependencies'
# Given an expression exp of length n consisting of some brackets.
# The task is to print the bracket numbers when the expression is
# being parsed
# https://www.geeksforgeeks.org/print-bracket-number/
class BracketParser
  def initialize
    @stack = Stack.new
    @output = []
  end

  def run(input)
    count = 1

    input.each_char do |c|
      if c =~ /\(/
        count = push_and_print(count)
      elsif c =~ /\)/
        print_and_pop
      end
    end

    @output
  end

  def push_and_print(count)
    @stack.push(count)

    @output << count

    count + 1
  end

  def print_and_pop
    @output << @stack.top

    @stack.pop
  end
end
