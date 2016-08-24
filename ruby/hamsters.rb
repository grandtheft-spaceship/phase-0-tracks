puts "Hello! Welcome to our Hamster Sanctuary! Does your hamster have a name? Please answer (y/N)"

answer = gets.chomp

if answer == "y"
	puts "Great!"
else answer == "N"
	puts "Ok. I'll name him/her Mickey!"
end

puts "How loud would you say your hamster is on a scale of 1 - 10?"

volume = gets.chomp
volume = volume.to_i

if volume >= 10 
	puts "Your hamster is too loud!"
elsif volume <= 10 && volume >= 6
	puts "Your hamster is still too loud!"
else
	puts "Your hamster is fine with the neighbors."
end

puts "What color is its fur?"

fur = gets.chomp

puts "#{fur} is a beautiful color!"

puts "Do you think your hamster is a good candidate for adoption? Please answer (y/N)"

answer = gets.chomp 

if answer == "y"
	puts "That's great!"
else
	puts "That's too bad!"
end

puts "How old do you think is your hamster? Please answer 1 - 3"

age = gets.chomp
age = age.to_i

if age >= 0 && age <= 2
	puts "Awww, he's still a baby!"
elsif age > 2 
	puts "I'm sure he has AARP"
else
	puts nil
end


