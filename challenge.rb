# Start with your code from last challenge.

require_relative 'LinkedList'

list = LinkedList.new
               
list.add(3)
list.add(5)
list.add_at(1, 11) 
list.add_at(0, 13)
# puts list.get(0)
# puts list.get(1)
# puts list.get(2)
# puts list.get(3)
list.remove(3)
puts list.get(0)
puts list.get(1)
puts list.get(2)

# # => 11


# => 5


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

