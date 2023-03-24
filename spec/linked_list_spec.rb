require 'rspec'
require './lib/node'
require './lib/linkedlist'

RSpec.describe LinkedList do

  it "exist" do
    list = LinkedList.new
    
    node = Node.new("plop")
      expect(list).to be_an_instance_of(LinkedList)
  end

   it "has a head" do
    list = LinkedList.new(nil)
    expect(list.head).to eq(nil)
  end

  it "can be appended" do
    list = LinkedList.new(nil)
    expect(list.append("doop")).to eq("doop")
    
  end

  it "can count nodes" do
    list = LinkedList.new(nil)
    list.append("doop")
    list.count
    expect(list.count).to eq(1)
  end
  it "can make a string" do
    list = LinkedList.new(nil)
    list.append("doop")
    list.to_string
    expect(list.to_string). to eq("doop")
  end
end