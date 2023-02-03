require './node'

class LinkedList

  def initialize
    @head = nil
  end

  def append(data)
    if @head
      @head += 1
    else
      @head = Node.new(data)
    end
  end
  
end