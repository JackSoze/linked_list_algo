class LinkedList
  attr_accessor :size
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def pre_pend(value)
    entry = Node.new(value)
    if @head == nil
      @head = entry
      @tail = entry
    else
      entry.next = @head
      @head = entry
    end
    self.size +=1
  end

  def append(value)
    entry = Node.new(value)
   if @head == nil
    @head = entry
    @tail = entry
   else
    @tail.next = entry
    @tail = entry
   end
   self.size +=1
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
my_list.pre_pend('kimy')
puts my_list.size
