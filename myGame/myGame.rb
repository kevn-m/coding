class Player
  attr_accessor :playername, :hitpoints, :weapon
  hitpoints = 100
end


newPlayer = Player.new

newPlayer.playername = "Kevin"

p newPlayer.hitpoints
