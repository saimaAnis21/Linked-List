# Start with your code from last challenge.
class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class LinkedList
    #setup head and tail
    attr_accessor :head, :tail
  
    def initialize
      @head = Node.new(nil)
      @tail = Node.new(nil)
    end
  
    def add(number)
      # your code here
      if @head.next_node.nil?
        new_node = Node.new(number)
        @head.next_node= new_node
        @tail=new_node
      else
        prev_node=@tail
        new_node = Node.new(number)
        @tail = new_node
        prev_node.next_node = @tail
      end
    end
  
    def get(index)
      
      node= get_node(index)
      node.value
    end

    def add_at(index,item)
        
        current_node= get_node(index)  
        new_node = Node.new(item)

        new_node.next_node = current_node
       
        if index==0
        @head.next_node = new_node  
        else  
        pre_node = get_node(index-1)
        pre_node.next_node = new_node
        end
    end

    def remove(index)
        
        current_node = get_node(index)
        if index==0
          @head.next_node = current_node.next_node
        else
            prev_node = get_node(index-1) 
            prev_node.next_node = current_node.next_node
        end
        
    end

    private
    def get_node(index)
        node=@head.next_node
      
      index.times do
         node = node.next_node
       end
       node
    end

  end
  

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
# puts list.get(0)
# puts list.get(1)
# puts list.get(2)
# puts list.get(3)
# # => 13 3 11 5
# puts ""
# list.remove(0)
# puts list.get(0)
# puts list.get(1)
# puts list.get(2)
# # => 13 3 5

puts list.get(2)
# # => 11

puts list.get(3)
# => 5
