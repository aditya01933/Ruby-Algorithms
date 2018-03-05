# Stack defines DS.
# In ruby arrays are dynamic. So, array is better for stack than linked list.
class Stack
  attr_reader :elements

  def initialize(attrs = [])
    @elements = attrs
  end

  def pop
    elements.pop

    elements
  end

  def push(val)
    elements << val
  end

  def top
    elements[-1]
  end
end
