require 'rspec'
require './lib/node'
require './lib/linkedlist'

RSpec.describe LinkedList do

  it "exist" do
    linked_list = LinkedList.new
    expect(linked_list).to be_an_instance_of(LinkedList)
  end
end