def randomNummberGenerator
p "Hi there, welcome to my random number generator."
p "Please enter the max number: "

maxNum = gets.chomp.to_i
i = 0

  if maxNum.is_a? Integer
    p "Please type 'roll' or 'exit':"
    while i <= 100
    user_input = gets.chomp.downcase
    case user_input
    when "roll"
    p rand(maxNum)
    i += 1
    p "Please type 'roll' or 'exit': "
    when 'exit'
    p "See ya!"
    break
    else p "Error. Not a valid command"
    end
    end
  else p "That's not a number!"
  end
  end

def randomArray
  array = []
  p "Hi there! Please feel free to continue entering words in. Once you're done, please enter '!!'"
  user_input = nil
  while user_input != "!!"
    user_input = gets.chomp
    array.push user_input
  end
  p array.sample
end
p "Welcome to my this random app. Below are the options: "
p "1. Random number generator."
p "2. Random string genarator."
choice = gets.chomp.to_i
case choice
when 1
  randomNummberGenerator
when 2
  randomArray
else "This option doesn't exist, ya goose!"
end
