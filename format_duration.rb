# "Human readable duration format" - Kata from www.codewars.com
# Your task in order to complete this Kata is to write a function which formats a duration,
# given as a number of seconds, in a human-friendly way.
#
# Examples:
# format_duration(62)    # returns "1 minute and 2 seconds"
# format_duration(3662)  # returns "1 hour, 1 minute and 2 seconds"

def format_duration(s)

  if s == 0
    return "now"
  end

  years = s / 31536000
  days = (s % 31536000) / 86400
  hours = ((s % 31536000) % 86400) / 3600
  minutes = (((s % 31536000) % 86400) % 3600) / 60
  seconds = (((s % 31536000) % 86400) % 3600) % 60

  durations = [years, days, hours, minutes, seconds]
  time_units = [" year", " day", " hour", " minute", " second"]
  expression = []

  durations.each_with_index do |num, i|
    if num == 1
      expression.push(num.to_s + time_units[i])
    elsif num > 1
      expression.push(num.to_s + time_units[i] + "s")
    end
  end

  expression.join(", ").reverse.sub(", ".reverse, " and ".reverse).reverse

end
