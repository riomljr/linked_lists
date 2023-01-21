class Node
  attr_accessor :value, :nextnode
  def initialize(value)
    @value = value
    @nextnode = nil
  end
end

class LinkedList < Node
  attr_reader :list
  def initialize 
    @list = nil
  end

  def append(value)
    !@list ? @list = Node.new(value) : tail(@list).nextnode = Node.new(value)
  end

  def prepend(value)
    front = Node.new(value)
    front.nextnode = @list
    @list = front
  end

  def size(value = @list, numb = 0)
    return numb + 1 if !value.nextnode
    size(value.nextnode, numb + 1)
  end

  def head
    @list.value
  end

  def tail(value)
    return value if !value.nextnode
    tail(value.nextnode)
  end

  def at(list = @list, start = 0, value)
    return list.value if value == start
    return nil if !list.nextnode 
    at(list.nextnode, start + 1, value)
  end

  def pop(value = @list)
    val = value.nextnode
    return val.nextnode = nil if val.nextnode.nextnode == nil
    pop(value.nextnode)
  end
 
  def contains?(value)
    cycle_through(@list, value)
  end

  def cycle_through(list, value)
    return true if list.value === value
    return false if !list.nextnode 
    cycle_through(list.nextnode, value)
  end

  def find(value)
    count_through(@list, 0, value)
  end

  def count_through(list, start, value)
    return start if list.value === value
    return nil if !list.nextnode 
    count_through(list.nextnode, start + 1, value)
  end

  def to_s(value = @list)
    print "(#{value.value}) ->" 
    if !value.nextnode
      print "nil"
      return
    end
    to_s(value.nextnode)
  end
end


