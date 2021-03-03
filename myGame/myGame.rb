# New player class and says Hello when initialized
class Player
  attr_accessor :playername, :hitpoints, :damage
  def initialize(playername, hitpoints, damage)
    puts "Hello #{playername}. You currently have #{hitpoints} hitpoints."
    @hitpoints = hitpoints
    @damage = damage
  end

  def is_alive
    if @hitpoints > 0
      return true
    elsif @hitpoints < 0
      return false
    end
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

# Asks if the player wants to run or fight, then sets in_combat accordingly
def combat_check
  puts "What will you do? RUN or FIGHT?"
  input = gets.chomp.downcase
  if input == "fight"
    $in_combat = true
    puts "You are in combat."
  elsif input == "run"
    $in_combat = false
    puts "You've run away."
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
first_snake = Snake.new(10, 2)
combat_check


# created some logic to choose to attack or run from snake
while $in_combat == true
  while first_snake.hitpoints > 0
    puts "You're in battle with the Snake.\nIt currently has #{first_snake.hitpoints} hitpoints.\nYou have #{player1.hitpoints} hitpoints.\nWill you ATTACK or DO NOTHING or RUN?"
    input = gets.chomp.downcase
  case input
    when "attack"
      puts "ATTACKING..."
      player1.hitpoints = player1.hitpoints - first_snake.damage
      first_snake.hitpoints = first_snake.hitpoints - player1.damage
      puts "Snake bit you for #{first_snake.damage}. You now have #{player1.hitpoints} hitpoints."
      puts "You hit the snake for #{player1.damage}. The snake has #{first_snake.hitpoints} hitpoints left."
    when "do nothing"
      puts "SNAKE ATTACKS YOU"
    when "run"
      puts "YOU RUN AWAY"
      $in_combat = false
  end
  $in_combat = false
  end
end

# CODE FROM HERE IS AFTER user runs away from the snake
puts "Next level"
