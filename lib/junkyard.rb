
# Idea was to append and organize code in order, can't get it to work, but couldn't bear to delete it :)
def append(data)
  last_node = nil
  if @head
    @head.find_spot = Node.new(data)
  else
    @head = Node.new(data)
    @head = last_node
    
  end

  def find_spot
    last_node.next_node = Node.new(data)
  end
  