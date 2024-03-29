# Your goal is to create a function to format a number given a template;
# if the number is not present, use the digits 1234567890 to fill in the spaces.

# A few rules:

    # - The template might consist of other numbers, special characters or the like:
    #   you need to replace only alphabetical characters (both lower- and uppercase).
    # - If the given or default string representing the number is shorter than the template,
    #   just repeat it to fill all the spaces.

# A few examples:

# numeric_formatter("xxx xxxxx xx","5465253289") == "546 52532 89"
# numeric_formatter("xxx xxxxx xx") == "123 45678 90"
# numeric_formatter("+555 aaaa bbbb", "18031978") == "+555 1803 1978"
# numeric_formatter("+555 aaaa bbbb") == "+555 1234 5678"
# numeric_formatter("xxxx yyyy zzzz") == "1234 5678 9012"

def numeric_formatter(template, number = "1234567890")
  formatted_string = []
  number_of_spaces = 0
  template.chars.each_with_index do |digit, i|
    if digit =~ /[A-Za-z]/
      formatted_string.push(number[(i - number_of_spaces) % number.length])
    else
      formatted_string.push(digit)
      number_of_spaces += 1
    end
  end
  formatted_string.join
end

puts numeric_formatter("xxx xxxxx xx","5465253289") == "546 52532 89"
puts numeric_formatter("xxx xxxxx xx") == "123 45678 90"
puts numeric_formatter("+555 aaaa bbbb", "18031978") == "+555 1803 1978"
puts numeric_formatter("+555 aaaa bbbb") == "+555 1234 5678"
puts numeric_formatter("xxxx yyyy zzzz") == "1234 5678 9012"
