require 'rspec'
require './lib/linkedlist'

# RSpec.describe LinkedList do
#   it 'exists' do

#     data = "bloop"
#     node = Node.new(data)
#     list = LinkedList.new
    
#     expect(list).to be_instance_of(LinkedList)

#   end
# end

# RSpec.describe LinkedList do
#   it 'has node' do
#     list = LinkedList.new
#     list.append("bloop")

#   expect(list.head.data).to eq("bloop")
#   end
# end

# RSpec.describe LinkedList do
#   it 'holds two nodes' do

#     list = LinkedList.new
#     list.append("bloop")
#     list.append("flomp")

#   expect(list.head.next_node.data).to eq("flomp")
#   end
# end

# RSpec.describe LinkedList do
#   it 'counts two nodes' do

#     list = LinkedList.new
#     list.append("bloop")
#     list.append("flomp")

#   expect(list.count).to eq(2)
#   end
# end

# RSpec.describe LinkedList do
#   it 'counts one node' do

#     list = LinkedList.new
#     list.append("bloop")

#   expect(list.count).to eq(1)
#   end
# end

# RSpec.describe LinkedList do
#   it 'counts zero nodes' do

#     list = LinkedList.new

#   expect(list.count).to eq(0)
#   end
# end

RSpec.describe LinkedList do
  it 'counts three nodes' do

    list = LinkedList.new
    list.append("bloop")
    list.append("flomp")
    list.append("teeth")
    list.append("awer")
    require 'pry'; binding.pry

  expect(list.count).to eq(3)
  end
end