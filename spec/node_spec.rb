require 'rspec'
require './lib/node'

RSpec.describe Node do
  
  it "it exsists" do
    node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
  end

  it "has data" do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  
end

