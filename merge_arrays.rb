# merges the two sorted arrays, assuming asc order 

def merge(larger_arr, smaller_arr)
	result = []

  if larger_arr.first < smaller_arr.first
    result << larger_arr.shift
  else
    result << smaller_arr.shift
  end

  if smaller_arr.length == 0
    return result + larger_arr
  elsif larger_arr.length == 0
    return result + smaller_arr
  else
    return result + merge(larger_arr, smaller_arr)
  end
end

# Enter array as : 1, 3, 5

puts 'Enter larger array : '
larger_arr = gets.split(',').map(&:to_i)

puts 'Enter smaller array : '
smaller_arr = gets.split(',').map(&:to_i)

puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts 'result : '
p merge(larger_arr, smaller_arr)