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

  def head
    @head.to_s
  end

  def tail
    @tail.to_s
  end

end

class Node
  attr_accessor :value, :next, :to_s

  def initialize(value)
    @value = value
    @next = nil
  end

  def to_s
    check = -> {if @next == nil then "value nil" else @next.value end}
    puts "[value: #{value}|next: #{check.call}]"
  end
end


my_list = LinkedList.new
my_list.pre_pend('kim')
my_list.append('jack')
my_list.append('miriti')
puts my_list.size
puts my_list.head
puts my_list.tail
