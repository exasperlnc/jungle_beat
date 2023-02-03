require './node'

class LinkedList
  attr_reader :node
  attr_accessor :head

  def initialize
    @node = node
    @head = nil
  end

  def append(data)
    if @head
      @head.next_node = Node.new(data)
    else
    @head = Node.new(data)
    end
  end

  def count
    counter = 0
    current_node = @head
    if @head != nil && head.next_node != nil
      counter += 1
      counter += 1
      current_node = head.next_node
      
      if current_node.next_node != nil
        counter += 1
      end
      
    elsif @head != nil && head.next_node == nil
      counter += 1
    else
      return counter
    end

    return counter
    
  end

  
end


# def count
#   counter = 0
#   current_node = @head
#   if @head != nil && head.next_node != nil
#     counter += 1
#     counter += 1
#     current_node = head.next_node
    
#     if current_node.next_node != nil
#       counter += 1
#     end
    
#   elsif @head != nil && head.next_node == nil
#     counter += 1
#   else
#     return counter
#   end
  
#   return counter
  
# end