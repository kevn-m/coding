p "Hi please enter a number from 1 - 5: "
input = gets.chomp.to_i

case input
when 1
  p "That'a one!"
when 2
  p "That's a two!"
when 3
  p "That's a 3!"
else p "IDK MATE"
end
