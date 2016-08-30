# RELEASE 0
def number_adder
	num3 = (3 + 4)
	p num3
	add_ten = num3 + 10
	yield(num3, add_ten)
end

number_adder {|num3, add_ten| puts "#{num3} + 10 = #{add_ten}"}

# RELEASE 1

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

# RELEASE 2


random_numbers = [33, 1, 54, 89, 45]

puts "Before .delete_if"
p random_numbers

random_numbers.delete_if { |randnum| randnum < 50}

puts "After .delete_if"
p random_numbers


random_numbers = [33, 1, 54, 89, 45]

puts "Before .select!"
p random_numbers

random_numbers.select! { |randnum| randnum < 5}

puts "After .select!"
p random_numbers


random_numbers = [33, 1, 54, 89, 45]

puts "Before .keep_if"
p random_numbers

random_numbers.keep_if { |randnum| randnum.odd? }

puts "After .keep_if"
p random_numbers


random_numbers = [33, 1, 54, 89, 45]

puts "Before .reject!"
p random_numbers

random_numbers.reject! { |randnum| randnum.odd? }

puts "After .reject!"
p random_numbers


random_numbers = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
}

puts "Before .delete_if"
p random_numbers

random_numbers.delete_if { |digit, string| string.length <= 3}

puts "After .delete_if"
p random_numbers


random_numbers = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
}

puts "Before .select!"
p random_numbers

random_numbers.select! { |digit, string| string.length > 3}

puts "After .select!"
p random_numbers


random_numbers = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
}

puts "Before .keep_if"
p random_numbers

random_numbers.keep_if { |digit, string| digit.odd? }

puts "After .keep_if"
p random_numbers

random_numbers = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
}

puts "Before .reject!"
p random_numbers

random_numbers.reject! { |digit, string| digit > 3 }

puts "After .reject!"
p random_numbers



































