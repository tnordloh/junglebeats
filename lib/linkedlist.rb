# An example of the classical Linked List implementation
class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head.nil? ? nil : Node.new(head)
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
      @head.data
    else
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  def count
    count = 0
    each { count += 1 }
    count
  end

  def to_string
    string = []
    each { |node| string << node.data }

    string.join(' ')
  end

  def each(&block)
    current_node = @head
    until current_node.nil?
      block.call(current_node)
      current_node = current_node.next_node
    end
  end
end
