require './lib/linked_list'
require 'rspec'


RSpec.describe JungleBeat do

  it 'exists' do
    jb = JungleBeat.new



    expect(jb).to be_instance_of(JungleBeat)

  end

  it 'has list, appends' do
  jb = JungleBeat.new


  expect(jb.list.head).to eq (nil)

  jb.append('deep')

  expect(jb.list.head.data).to eq('deep')

  end

  it 'appends three' do 
    jb = JungleBeat.new
    jb.append('deep doo too')


    expect(jb.list.count).to eq(3)
  end


end