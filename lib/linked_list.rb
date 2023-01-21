class Node
  attr_accessor :value, :nextnode

  def initialize(value)
    @value = value
    @nextnode = nil
  end

end

class LinkedList < Node
  def initialize 
    @list = nil
  end

  def append(value)
    if !@list 
      @list = Node.new(value)
      @list.value = value
    else
      tail(@list).nextnode = Node.new(value)
    end
  end

  def prepend(value)
  end

  def size
  end

  def head
  end

  def tail(value)
    return value if !value.nextnode
    tail(value.nextnode)
  end

  def at(index)
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end

end

list = LinkedList.new
list.append(10)
p list
list.append(20)
p list