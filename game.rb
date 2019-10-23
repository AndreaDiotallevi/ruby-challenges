# The user starts by facing forward. They can move right, left, or forward.
# If they move right, they die (there's a goblin).
# If they move left, they die (there's a werewolf).
# If they move forward, they live. They have to do this twice to win.

puts "The game has started and you are faced foward."
puts "Type 'r' to move right, 'l' to move left and 'f' to move forward."
score = 0

while true do
  user_choice = gets.chomp
  case user_choice
  when 'r'
    puts "You die! A goblin just killed you!"
    break
  when 'l'
    puts "You die! A werewolf just killed you!"
    break
  when 'f'
    score += 1
    if score == 2
      puts "You win!"
      break
    else
      puts "You have moved forward and you are still alive! You can move again!"
    end
  else
    puts "Typo! Please type either 'r', 'l' or 'f'!"
  end
end
