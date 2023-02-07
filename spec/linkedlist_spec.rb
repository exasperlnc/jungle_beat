require 'rspec'
require './lib/linked_list'

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
    list = LinkedList.new
    list.append("bloop")

  expect(list.head.data).to eq("bloop")
  end
end

RSpec.describe LinkedList do
  it 'holds two nodes' do

    list = LinkedList.new
    list.append("bloop")
    list.append("flomp")

  expect(list.head.next_node.data).to eq("flomp")
  end
end

RSpec.describe LinkedList do
  it 'counts two nodes' do

    list = LinkedList.new
    list.append("bloop")
    list.append("flomp")

  expect(list.count).to eq(2)
  end
end

RSpec.describe LinkedList do
  it 'counts one node' do

    list = LinkedList.new
    list.append("bloop")

  expect(list.count).to eq(1)
  end
end

RSpec.describe LinkedList do
  it 'counts zero nodes' do

    list = LinkedList.new

  expect(list.count).to eq(0)
  end
end

RSpec.describe LinkedList do
  it 'counts four nodes' do

    list = LinkedList.new
    list.append("bloop")
    list.append("flomp")
    list.append("teeth")
    list.append("awer")

  expect(list.count).to eq(4)
  end
  it 'turns data to string' do
    list = LinkedList.new
    list.append("bomp")
    # require 'pry'; binding.pry

    expect(list.to_string).to eq("bomp")
    list.append('clomp')
    expect(list.to_string).to eq("bomp clomp")
  end

  it 'turns many to string' do
    list = LinkedList.new
    list.append("bomp")
    list.append("flomp")
    list.append("teeth")
    list.append("awer")

    expect(list.to_string).to eq("bomp flomp teeth awer")

  end

  it 'prepends' do 
    list = LinkedList.new
    list.append("bomp")
    list.prepend('clomp')

    expect(list.head.data).to eq('clomp')
  end



  it 'inserts at beginning' do
    list = LinkedList.new
    list.append('bagel')
    list.insert(0, 'bloop')
  

    expect(list.head.data).to eq('bloop')
  end

  it 'inserts' do
    list = LinkedList.new
    list.append("bloop")
    list.append("flomp")
    list.append("jomp")
    list.insert(1, 'after bloop, before flomp')
    # require 'pry'; binding.pry

    expect(list.head.next_node.data).to eq('after bloop, before flomp')
  end


  it 'finds' do 
    list = LinkedList.new
    list.append('bloop')
    list.append('flomp')
    list.append('shoo')
    list.append('squish')
    list.append('pow')
    list.append('blorg')


    expect(list.find(2,2)).to eq('shoo squish')

  end

  it 'pops' do 
    list = LinkedList.new
    list.append('bloop')
    list.append('flomp')
    list.append('shoo')
    list.append('squish')
    list.append('pow')
    list.append('blorg')
    list.pop


    expect(list.count).to eq(5)

  end

  it 'includes?' do
    list = LinkedList.new
    list.append('bloop')
    list.append('flomp')

    expect(list.includes?('flomp')).to eq(true)
    
  end

end