def insert(position, data)
  node = Node.new(data)
  # position.times do end
  if position = 0
node.next_node = @head
@head = node
  else 
    until count > position
      current_node = @head.next_node
      count += 1
    end
# count = 1
node.next_node = current_node.next_node
current_node.next_node = node
  end

end

 
 
 
 # # def initialize
  #   @node = node
  #   @head = node
  #   @current_node = nil
  # end



  # def append(data)
  #   # current_node = nil
  #   if @head
  #     @current_node.next_node = Node.new(data)
  #   else
  #   @head = Node.new(data)
  #   @current_node = @head

  #   end
  # end

  # def count
  #   counter = 0
  #   if @head != nil && head.next_node != nil
  #     # require 'pry'; binding.pry
  #     counter += 2
  #     @current_node = head.next_node
  #     require 'pry'; binding.pry
      
  #     until @current_node.next_node.nil?
  #       counter += 1
  #     end
      
  #   elsif @head != nil && head.next_node.nil?
  #     counter += 1
  #   else
  #     return counter
  #   end

  #   return counter
    
  # end


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
