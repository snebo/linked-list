# frozen_string_literal: true

# Linked list class represent the full list
class LinkedList
  attr_reader  :head
  
  def initialize(value)
    @head = Node.new(value)
  end
  
  def append(val)
    current = @head
    while current.next_node
      current = current.next_node
    end
    current.next_node = Node.new(val)
  end

  def prepend(val)
    @head = Node.new(val, @head)
  end

  def size
    current = @head
    count = 1
    while current.next_node
      count += 1
       current = current.next_node
    end
    count
  end

  def tail
    current = @head
    while current.next_node
      current = current.next_node
    end
    current
  end

  def at(index)
    current = @head
    index.times {current = current.next_node}
    current
  end

  def pop
    current = @head
    while current.next_node.next_node
      current = current.next_node
    end
    current.next_node = nil
  end

  def contain?(val)
    current = @head
    while current.next_node
      if curent.value == val
        return true
      end
      current = current.next_node
    end
    false
  end

  def find(val)
    count = 0
    current = @head
    while current.next_node
      if current.value == val
        return count
      else
        count += 1
        current = current.next_node
      end
    end
    nil
  end

  def to_s
    current = @head
    str = ''
    while current
      str += "#{current.value} -> "
      current = current.next_node
    end
    return str
  end

  def insert_at(val, index)
    count = 0
    current = @head
    while current.next_node
      if count == (index - 1)
          current.next_node = Node.new(val, current.next_node)
      end
    end
  end

  def remove_at(index)
    count = 0
    current = @head
    #replace the first
    if current.value == index
      @head = current.next_node
    end
    while current.next_node != nil && count <= index
      if count == index - 1
        current.next_node = current.next_node.next_node
        return nil
      end
      count += 1
    end
  end
  
end

# Node class will create the nodes
class Node
  attr_accessor :value, :next_node
  
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# Test the class
list = LinkedList.new(4)
list.append(5)
puts list.to_s
list.append(8)
list.prepend(3)
print "Find(5): "
p list.find(5)
puts "Size: #{list.size}"
list.append(6)
puts list.to_s
list.remove_at(1)
puts list.to_s