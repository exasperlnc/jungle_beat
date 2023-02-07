require_relative 'node'

class LinkedList
  attr_reader :node
  attr_accessor :head

  def initialize
    @head = node


  end
  def to_string
    current_node = @head
    stringer = []
    stringer.push(current_node.data)
    until current_node.next_node.nil?
      current_node = current_node.next_node
      stringer.push(current_node.data)
    end

    return stringer.join(" ")
  end

  def count
    if @head == nil
      count = 0 
    else
      current_node = @head.next_node
      count = 1 
      until current_node.nil?
        count += 1 
        current_node = current_node.next_node
      end
    end
    count
  end

  def append(data)
    if @head.nil? 
      @head = Node.new(data)
    else
      make_current_node(data)
    end
  end

  def make_current_node(data)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
      
    end
    current_node.next_node = Node.new(data)
  end

  def prepend(data)
    if @head
      @head, @head.next_node = Node.new(data), @head

    else
      @head = Node.new(data)
    end
  end

def insert(position, data)
  if self.head.nil? 
    self.append(data)
  elsif position == 0
    self.prepend(data)
  elsif position > self.count 
    return 'Error, position larger than total nodes'
  else 
    last_node = @head
    count = 1
    next_node = last_node.next_node
    until count == position
      last_node = last_node.next_node
      next_node = last_node.next_node
      count += 1 
    end
    new_node = Node.new(data)
    new_node.next_node = next_node
    last_node.next_node = new_node
    end
end



  def find(position, elements)
    current_node = @head
    arr = []
    position.times do
      current_node = current_node.next_node

    end
    elements.times do
      arr.push current_node.data
      current_node = current_node.next_node
    end
    arr.join(" ")

    end

    def includes?(data)
      checker = self.to_string
      checker.include?(data)
    end

    def pop 
      current_node = @head
      last_node = @head
      until current_node.next_node.nil?
        last_node = current_node
        current_node = current_node.next_node
      end
      last_node.next_node = nil

    end

end