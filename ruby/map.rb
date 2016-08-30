letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

# iterate through the array with .map
modified_letters = letters.map do |letter|
  puts letter
  letter.next
end

puts "After .map call:"
puts letters

# or you can use a bang!

letters.map! do |letter|
  puts letter
  letter.next
end

puts "After .map! call:"
p letters
p modified_letters









