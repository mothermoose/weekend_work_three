# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
one = sum_of_range[0]
two = sum_of_range[1]
counter = 1
sum_of_one = 0
sum_of_two = 0

one.times do 
  sum_of_one = one - counter + one 
end 

two.times do
  sum_of_two = two - counter + two
end  

result = sum_of_one + sum_of_two


end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end