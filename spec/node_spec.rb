require 'rspec'
require './lib/node'

RSpec.describe Node do
  it 'exists' do 
    data = "bloop"
    node = Node.new(data)

    expect(node).to be_instance_of(Node)
  end
end

RSpec.describe Node do
  it 'has data' do 
    data = "bloop"
    node = Node.new(data)

    expect(node.data).to eq("bloop")
  end
end

RSpec.describe Node do
  it 'next node' do 
    data = "bloop"
    node = Node.new(data)

    expect(node.next_node).to eq(nil)
  end
end
