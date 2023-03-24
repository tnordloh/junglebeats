class LinkedList
 
  attr_reader :head
  
  def initialize (head = nil)
    @head = head
  end

  def append(data)
    @head = Node.new(data)
    @head.data
  end
  
  def count
    count = 0
    current_node = @head
    while current_node != nil
      count = count + 1
      current_node = current_node.next_node
    end
    return count
  end
  
  def to_string
    string = ""
    current_node = @head
    while current_node != nil
      string = string + current_node.data
      current_node = current_node.next_node
    end
    return string

  end
  
end