require 'rspec'
require './lib/node'
require './lib/linkedlist'

RSpec.describe LinkedList do

  it "exist" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "has a head" do
    list = LinkedList.new(nil)
    expect(list.head).to eq(nil)
  end

  it "can be append" do
    list = LinkedList.new(nil)
    list.append("doop")
    expect(list.head).to eq(nil)
  end

end