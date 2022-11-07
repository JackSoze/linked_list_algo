class LinkedList
  attr_accessor :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def pre_pend(value)
    entry = Node.new(value)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      entry.next = @head
      @head = entry
    end
    self.size += 1
  end

  def append(value)
    entry = Node.new(value)
    if @head.nil?
      @head = entry
    else
      @tail.next = entry
    end
    @tail = entry
    self.size += 1
  end

  def head
    @head.to_s
  end

  def tail
    @tail.to_s
  end

  def at(index)
    temp = @head
    temp_index = 0
    until temp.nil?
      if temp_index == index
        puts "#{temp.value}"
        return
      end
      temp_index += 1
      temp = temp.next
    end
  end

  def pop
    if @head == @tail
      @head = nil
    else
      temp = @head
      until temp.nil?
        if temp.next == @tail
          temp.next = nil
          @tail = temp
          self.size -= 1
          return
        end
        temp = temp.next
      end
    end
  end
end

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

  def to_s
    check = -> { @next.nil? ? 'value nil' : @next.value }
    puts "[value: #{value}|next: #{check.call}]"
  end
end

my_list = LinkedList.new
my_list.pre_pend('kim')
my_list.append('jack')
my_list.append('miriti')
puts my_list.size
# puts my_list.head
puts my_list.tail
# my_list.pop
puts my_list.tail
puts my_list.size
