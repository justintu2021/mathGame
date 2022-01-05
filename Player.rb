
class Player
  attr_accessor :life
  
  def initialize (n,l)
    @name = n
    @life = l
  end

  def manage_life ()
    @life -=1
  end

end

# player1= Player.new(1,3)
# p player1


# puts player1.manage_life