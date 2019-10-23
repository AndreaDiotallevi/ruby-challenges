# Prompt the user the game has started and that he is faced forward
puts "The game has started and you are faced foward."
# Prompt the user the commands he must enter to go right, left or forward
puts "Type 'r' to move right, 'l' to move left and 'f' to move forward."
# Create variable "score" that stores the amount of times the user has gone forward
score = 0

while true do
  user_choice = gets.chomp
  case user_choice
  # If the user move right he dies becuase there is a goblin
  when 'r'
    puts "You die! A goblin just killed you!"
    break
  # If the user move left he dies because there is a werewolf
  when 'l'
    puts "You die! A werewolf just killed you!"
    break
  # If the user move forward increase score by 1. If score equals 2 display a winning message.
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
