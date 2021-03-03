# New player class and says Hello when initialized
class Player
  attr_accessor :playername, :hitpoints, :damage
  def initialize(playername, hitpoints, damage)
    puts "Hello #{playername}. You currently have #{hitpoints} hitpoints."
    @hitpoints = hitpoints
    @damage = damage
  end
end

# Create a class of snakes with 2 attributes
class Snake
  attr_accessor :hitpoints, :damage
  def initialize(hitpoints, damage)
  @hitpoints = hitpoints
  @damage = damage
  end
end

def combat_check
  puts "What will you do? RUN or FIGHT?"
  input = gets.chomp.downcase
  if input == "fight"
    $in_combat = true
  elsif input == "run"
    $in_combat = false
  end
end

# Puts the player's name into the Player Class and creates a new player
puts "Hello player. Please enter your name."
playername = gets.chomp

player1 = Player.new(playername, 100, 5)
$in_combat = false

puts "You are on a journey. Please type your responses as you go.\n.\n.\n."
puts "Oh no! There's a snake in front of you."

# Creates the first snake enemy - relatively weak with 10hp and 2dmg
firstSnake = Snake.new(10,2)
combat_check


# created some logic to choose to attack or run from snake
if $in_combat == true
  while firstSnake.hitpoints > 0
    puts "You're in battle with the Snake. It currently has #{firstSnake.hitpoints} hitpoints. Will you ATTACK or DO NOTHING or RUN?"
    input = gets.chomp.downcase
    case input
    when "attack"
      puts "attacking..."
    when "do nothing"
      puts "Snake attacks you"
    when "run"
      puts "You run away"
    end
    break
  end
end


# while (firstSnake.hitpoints > 0 && in_combat == true)
#   input = gets.chomp!.downcase
#   if input == "fight"
#   player1.hitpoints = player1.hitpoints - firstSnake.damage
#   firstSnake.hitpoints = firstSnake.hitpoints - player1.damage
#   puts "Snake bit you for #{firstSnake.damage}. You now have #{player1.hitpoints} hitpoints."
#   puts "You hit the snake for #{player1.damage}. The snake has #{firstSnake.hitpoints} hitpoints left."
#   elsif
#   puts "You ran away!"
#   in_combat = false
#   puts in_combat
#   end
