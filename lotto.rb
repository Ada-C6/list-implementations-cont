require './array-list.rb'
require './linked-list.rb'

class Lotto
  def initialize
    @ticket = LinkedList.new
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
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

lotto_sim = Lotto.new

puts "Your ticket is......"
ticket = lotto_sim
ticket.display_ticket
ticket.reverse.display_ticket
