# The user sees a greeting which asks them to enter their name
puts "Hello, what's your name?"
# The user enters their name
user_name = gets.chomp
# If the user's name begins with "S", the program shouts the user's name back at them
if user_name[0].upcase == "S"
  puts "Damn #{user_name}!"
else
  puts "Good morning #{user_name}!"
end
