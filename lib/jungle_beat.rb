require_relative 'linked_list'

class JungleBeat
  attr_accessor :list

  def initialize
  @list = LinkedList.new
    
  end
  
  def append(data)
    data_array = data.split
    data_array.map do 
      list.append(data)
    end

  end

  def play
    current_node = @head
    data_array = []
    data_array.push current_node

    until current_node.next_node.nil?
      data_array.push current_node.next_node
      current_node = current_node.next_node
    end
    
    beats = data_array.join(" ")
    return `say -r 500 -v Boing #{beats}`
  end

  
end