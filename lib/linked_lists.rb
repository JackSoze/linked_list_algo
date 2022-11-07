class LinkedList

  def append(value)
    last = Node.new(value)
  end

end

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end


my_list = LinkedList.new
my_list.append('kimy')
puts my_list
