# New player class and says Hello when initialized
class Player
  attr_accessor :playername, :hitpoints, :damage
  def initialize(playername, hitpoints, damage)
    puts "Hello #{playername}. You currently have #{hitpoints} hitpoints."
    @hitpoints = hitpoints
    @damage = damage
  end

  def player_alive
    if @hitpoints > 0
      return true
    elsif @hitpoints <= 0
      return false
    end
  end
end

# Create a class of snakes with 3 attributes
class Snake
  attr_accessor :name, :hitpoints, :damage
  def initialize(name, hitpoints, damage)
  @name = name
  @hitpoints = hitpoints
  @damage = damage
  end

  def snake_alive
    if @hitpoints > 0
      return true
    elsif @hitpoints <= 0
      return false
    end
  end
end

# Asks if the player wants to run or fight, then sets in_combat accordingly
def combat_check
  puts "What will you do? RUN or FIGHT?"
  input = gets.chomp.downcase
  if input == "fight"
    $in_combat = true
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

# Creates the first snake enemy - relatively weak with 10hp and 2dmg
first_snake = Snake.new("Brown Snake", 10, 10)
puts "Oh no! There's a #{first_snake.name} in front of you."
combat_check

if $in_combat == true
  puts "In combat with #{first_snake.name}"
  while player1.player_alive == true
    #get input
    puts "ATTACK or RUN"
    input = gets.chomp.downcase
    # if they run
    if input == "run"
      puts "You ran away"
      break
    # if they fight
    elsif input == "attack"
      if first_snake.snake_alive == true
        player1.hitpoints = player1.hitpoints - first_snake.damage
        first_snake.hitpoints = first_snake.hitpoints - player1.damage
      puts "You attack the #{first_snake.name} for #{player1.damage} damage."
      puts "The #{first_snake.name} attacks you for #{first_snake.damage} damage."
      puts "Your health: #{player1.hitpoints}. #{first_snake.name}'s health: #{first_snake.hitpoints}"
      puts "Player status: #{player1.player_alive}. #{first_snake.name} status: #{first_snake.snake_alive}"
      elsif first_snake.snake_alive == false
        puts "#{first_snake.name} is dead."
        break
      end
    end
  end
end


# CODE FROM HERE IS AFTER user runs away from the snake
puts "Combat ends"

#check if player is alive

if player1.player_alive == true
  puts "Congrats next level!"
elsif player1.player_alive == false
  puts "You are dead."
end
