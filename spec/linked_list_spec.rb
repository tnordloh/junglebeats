require 'rspec'
require './lib/node'
require './lib/linkedlist'

RSpec.describe LinkedList do
  it 'exist' do
    list = LinkedList.new

    node = Node.new('plop')
      expect(list).to be_an_instance_of(LinkedList)
  end

   it 'has a head' do
    list = LinkedList.new(nil)
    expect(list.head).to eq(nil)
  end

  it 'can be appended' do
    list = LinkedList.new(nil)
    expect(list.append('doop')).to eq('doop')
    expect(list.append('deep')).to eq('deep')
  end

  it 'can count nodes' do
    list = LinkedList.new(nil)
    list.append('doop')
    list.append('deep')
    expect(list.count).to eq(2)
  end

  it 'can make a string' do
    list = LinkedList.new(nil)
    list.append('doop')
    list.append('deep')
    expect(list.to_string).to eq('doop deep')
  end

  it 'can be prepended' do
    list = LinkedList.new('deep')
    list.prepend('plop')
    expect(list.to_string).to eq('plop deep')
  end

  it 'can insert' do
    list = LinkedList.new
    expect(list.append('plop')).to eq('plop')
    expect(list.to_string).to eq('plop')
    expect(list.append('suu')).to eq('suu')
    expect(list.prepend('dop')).to eq('dop')
    expect(list.to_string).to eq('dop plop suu')
    expect(list.count).to eq(3)
    expect(list[0].data).to eq('dop')
    expect(list[1].data).to eq('plop')
    expect(list.insert(1, 'woo')).to eq('woo')
    expect(list.to_string).to eq('dop woo plop suu')
    expect(list.insert(2, 'shi')).to eq('shi')
    expect(list.to_string).to eq('dop woo shi plop suu')
  end

  it 'can do a find of one or more nodes' do
    list = LinkedList.new
    initial_list = %w[deep woo shi shu blop]
    initial_list.each do |value|
      list.append(value)
    end
    expect(list.to_string).to eq(initial_list.join(' '))
    expect(list.find(2, 1)).to eq('shi')
    expect(list.find(1, 3)).to eq('woo shi shu')
  end

  it "can do an include" do
    list = LinkedList.new
    initial_list = %w[deep woo shi shu blop]
    initial_list.each do |value|
      list.append(value)
    end
    expect(list.includes?('deep')).to eq(true)
    expect(list.includes?('dep')).to eq(false)
  end

  it "can do a pop" do
    list = LinkedList.new
    initial_list = %w[deep woo shi shu blop]
    initial_list.each do |value|
      list.append(value)
    end
    # expect(list.pop).to eq('blop')
    # expect(list.pop).to eq('shu')
    # expect(list.to_string).to eq('deep woo shi')
  end
end