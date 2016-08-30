# # => def say_hello
# # => 	puts "why, hello there!"
# # => 	yield("Steve", "Travis")
# # => end
# # => 
# # => say_hello { |name1, name2| puts "Great to see you there, #{name1} and #{name2}"}

# # def number_adder
# # 	num3 = (3 + 4)
# # 	p num3
# # 	add_ten = num3 + 10
# # 	yield(num3, add_ten)
# # end

# # number_adder {|num3, add_ten| puts "#{num3} + 10 = #{add_ten}"}

# letters = ["a", "b", "c", "d", "e"]
# puts "original data:"
# p letters

# letters.each do |letter|
# 	letter = letter.next
# end

# puts "after .each call:"
# p letters
# # This prints each letter individually, by going through EACH
# # data point, printing it, and moving on

# numbers = {1 => "one", 2 => "two", 3 => "three"}

# numbers.each do |digit, word|
# 	puts "#{digit} is spelled out as #{word}"
# end
=begin
comp_languages = [
"ruby",
"c+",
"python",
"java",
]

super_heroes = {
"superman" => "flight",
"batman" => "wealth",
"flash" => "speed",
"spiderman" => "webs"
}
puts "before calling .each" 
p comp_languages

comp_languages.each do |language|
	puts language.capitalize
end

puts "after calling .each"
p comp_languages
=end
=begin
comp_languages = [
"ruby",
"c+",
"python",
"java",
]
puts "before .map!"
p comp_languages

comp_languages.map! do | language |
	language.upcase
end
puts "after .map!"
p comp_languages
=end
super_heroes = {
"superman" => "flight",
"batman" => "wealth",
"flash" => "speed",
"spiderman" => "webs"
}

puts "before .each"
p super_heroes

super_heroes.each do | name, power|
	puts "#{name.capitalize} has the power of #{power.upcase}!"
end

puts "after .each"
p super_heroes