# Create a procedure that "puts" the sum of the integers below 1000 that are divisible by 3 or 5

# Solution 1
sum = 0
1000.times do |num|
  if num % 3 == 0 || num % 5 == 0
    sum += num
  end
end
puts sum

# Solution 2
puts 1000.times.select { |num| num % 3 == 0 || num % 5 == 0 } .sum
