require_relative 'node'

class LinkedList
  attr_reader :node
  attr_accessor :head

  def initialize
    @head = node


  end
  def to_s
    arr = []
    # require 'pry'; binding.pry
    arr.push(@head.data)
    current_node = @head
    if current_node.next_node != nil
      arr.push(current_node.next_node.data)
      current_node = current_node.next_node

    end

    return arr.join(" ")
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
    node = Node.new(data)
    current_node = @head.next_node
    last_node = @head
    if position != 0
      position.times do
        current_node = current_node.next_node
      end
      node.next_node = current_node.next_node
      current_node.next_node = node
    else 
      node.next_node = @head
      @head = node
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
      current_node = @head
      until current_node.data == data || (current_node.data != data && current_node.next_node.nil?)
        current_node
        return true


      end

    
    
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