require 'rspec'
require './lib/linkedlist'

RSpec.describe LinkedList do
  it 'exists' do

    data = "bloop"
    node = Node.new(data)
    list = LinkedList.new
    
    expect(list).to be_instance_of(LinkedList)
    
  end
end

RSpec.describe LinkedList do
  it 'has node' do
    data = "bloop"
    node = Node.new(data)
    list = LinkedList.new
    list.append(node)

  expect(list.node.data).to eq("bloop")
  end
end