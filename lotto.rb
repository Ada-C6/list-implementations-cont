require './array-list.rb'
require './linked-list.rb'

class Lotto
  def initialize
    @ticket = LinkedList.new
    counter = 0
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
      counter += 1
    end
  end

  def display_ticket
    @ticket.display
  end

  def sort
    @ticket = @ticket.sort
    return self
  end

  def reverse
    @ticket = @ticket.reverse
    return self
  end

end

puts "Your ticket is......"
ticket = Lotto.new
ticket.display_ticket
puts "Your sorted ticket is......"
ticket.sort.display_ticket
puts "Your sorted, reversed ticket is......"
ticket.sort.display_ticket
