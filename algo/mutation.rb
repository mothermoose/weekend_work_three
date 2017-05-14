# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  ## I can't rember if you can do each_with_index and [] on strings or if you will need to trun them into arrays first.
  # mutation_sorted = mutation.sort
  # base_word_sorted = base_word.sort
  # pass = true
  # mutation.each_with_index do |char, index|
  # if char != base_word_sorted[index]
  #   pass = false
  # end
  #return pass
  #end 
  mutation_array = mutation.split 
  mutation_length = mutation_array.length
  base_word_array = base_word.split
  counter = 0 
  mutation_letters = []

  mutation_length.times do 
  base_word_array.each do |letter|
    if letter = mutation_array[counter]
      mutation_letters << letter
    else 
      counter += 1
    end 
  end
  end 

  puts mutation_letters 


end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
