require_relative 'linked_list'

class JungleBeat
  attr_accessor :list

  def initialize
  @list = LinkedList.new
    
  end
  
  def append(data)
    data_array = data.split
    data_array.map do |data|
      list.append(data)
    end

  end

  def play
    beats = self.list.to_s
    `say -r 500 #{beats}` 
  end

  def count
    self.list.count
  end

  
end