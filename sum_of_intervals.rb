# "Sum of intervals" - Kata from www.codewars.com
# Write a function called sum_of_intervals() that accepts an array of intervals,
# and returns the sum of all the interval lengths. Overlapping intervals should only be counted once.

def sum_of_intervals(intervals)
  cleaned_intervals = [[]]
  comparison_array = []
  intervals.sort.each_with_index do |array, i|
    if i == 0
      cleaned_intervals[-1].push(array)
      comparison_array = array
    else
      if array[0] >= comparison_array[1]
        cleaned_intervals.push([])
        cleaned_intervals[-1].push(array)
        comparison_array = array
      else
        cleaned_intervals[-1].push(array)
        comparison_array = [[comparison_array[0], array[0]].min, [comparison_array[1], array[1]].max]
      end
    end
  end
  cleaned_intervals = cleaned_intervals.map { |arr| arr.flatten(1).minmax }
  cleaned_intervals.reduce(0) { |sum, arr| sum += arr[1] - arr[0] }
end
