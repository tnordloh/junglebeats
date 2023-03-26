# An example of the classical Linked List implementation
class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head.nil? ? nil : Node.new(head)
  end

  def[](position, length = 1)
    index = 0
    return_me = []
    each do |node|
      return_me << node if index >= position
      break if return_me.length == length

      index += 1
    end
    return_me
  end

  def find(position, length)
    self[position, length].map { |node| node.data }.join(' ')
  end

  def includes?(value)
    each { |node| return true if node.data == value }
    false
  end

  def insert(position, value)
    insert_node = self[position - 1].first
    next_node = insert_node.next_node
    insert_node.next_node = Node.new(value)
    insert_node.next_node.next_node = next_node
    value
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      old_head = @head
      @head = Node.new(value)
      @head.next_node = old_head
    end
    value
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      last_node.next_node = Node.new(value)
    end
    value
  end

  def count
    count = 0
    each { count += 1 }
    count
  end

  def last_node
    each { |node| return node if node.next_node.nil? }
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
