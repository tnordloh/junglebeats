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
    expect(list.append("deep")).to eq("deep")
  end

  it "can count nodes" do
    list = LinkedList.new(nil)
    list.append("doop")
    list.append("deep")
    expect(list.count).to eq(2)
  end

  it "can make a string" do
    list = LinkedList.new(nil)
    list.append("doop")
    list.append("deep")
    expect(list.to_string). to eq("doop deep")
  end

  it "can be prepended" do
    list = LinkedList.new("deep")
    list.prepend("plop")
    expect(list.to_string). to eq("plop deep")
  end
  
  it "can be prepended and appended" do
    list = LinkedList.new(nil)
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string). to eq("dop plop suu")
  end

  it "can have an insertion" do
    list = LinkedList.new(nil)
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    expect(list.to_string). to eq("dop woo plop suu")
  end

  it "can find a string" do 
    list = LinkedList.new(nil)
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.find(2, 1)
    expect(list.find(2, 1)). to eq("shi")
    expect(list.find(1, 3)). to eq ("woo shi shu")
  end

  it "can find included item" do
    list = LinkedList.new(nil)
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.includes?("deep")
    expect(list.includes?("deep")). to eq (true) 
  end
  
end