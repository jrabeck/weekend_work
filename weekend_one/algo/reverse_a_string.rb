
def reverse_a_string(string)
	letters = string.split("")
  order = []
  while letters.length > 0
  	order << letters.pop
  end
  order.join
end


# Driver code - don't touch anything below this line.
puts "TESTING reverse_a_string..."
puts

result = reverse_a_string("abcde")

puts "Your method returned:"
puts result
puts

if result == "edcba"
  puts "PASS!"
else
  puts "F"
end
