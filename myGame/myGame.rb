# New player class and says Hello when initialized
class Player
  attr_accessor :playername, :hitpoints
  def initialize(playername, hitpoints)
    p "Hello #{playername}. You currently have #{hitpoints} hitpoints."
    @hitpoints = hitpoints
  end
end

p "Hello player. Please enter your name."
playername = gets.chomp

player1 = Player.new(playername,100)
