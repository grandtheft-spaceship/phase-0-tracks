=begin

Alias Manager Program

1. Get user's first and last names
2. Switch the first and last names
3. Switch vowels to the next vowel in alphabetical order
4. Switch consonant to the next consonant in alphabetical order
5. "Felicia Torres" should become "Vussit Gimodoe"

=end

puts "Welcome to MI:9: Triple-0 Division. My name's Ruby."
puts "May I have your first and last name please..."

name = gets.chomp
name_array = name.split(" ").to_a

puts "Pleased to meet your acquaintance #{name_array[0]}..."

puts "Now, let's begin making your new alias."

puts "....................................."

def alias_first_stage(name)
  name_array = name.split(" ")

  full_name = []
  full_name << name_array[1] << name_array[0]

  full_name = full_name.join(" ")
end

alias_stage_one = alias_first_stage(name)
p "New Alias, Stage One: #{alias_stage_one}"

puts "....................................."
def next_vowel(name)
  name_letters = name.downcase.split("")
  vowels = ("aeiou").split("")

  name_letters.each_with_index do |l, l_index|
    vowels.each_with_index do |v, v_index|
      if l == v
        name_letters[l_index] = vowels[v_index + 1]
      end
    end
  end
  name = name_letters.join
end

def next_consonant(name)
  name_letters = name.downcase.split("")
  consonants = ("bcdfghjklmnpqrstvwxyz").split("")

  name_letters.each_with_index do |l, l_index|
    consonants.each_with_index do |c, c_index|
      if l == c
        name_letters[l_index] = consonants[c_index + 1]
      end
    end
  end
  name = name_letters.join
end

def alias_second_stage(full_name)
  name_array = full_name.split(" ")

  first_name = next_vowel(name_array[0])
  first_name = next_consonant(first_name)

  last_name = next_vowel(name_array[1])
  last_name = next_consonant(last_name)

  full_name = []
  full_name << first_name.capitalize << last_name.capitalize

  full_name.join(" ")
end

alias_stage_two = alias_second_stage(alias_stage_one)

p "New Alias, Stage Two: #{alias_stage_two}"

puts "....................................."

=begin
def next_vowel(name)
  name_letters = name.downcase.split("")
  vowels = ["a", "e", "i", "o", "u"]
  index = 0

  for letter in name_letters do
    for vowel in vowels do
      if letter == vowel
        name_letters[index] = vowels[index+1]
      end
      index +=1
    end 
  end
  name = name_letters.join

  p name
end
=end

=begin
def next_vowel(name)
  name_letters = name.downcase.split("")
  vowels = ["a", "e", "i", "o", "u"]
  index = 0

  for letter in name_letters do 
    if letter == vowels[index]
      name_letters[index] = vowels[index+1]
    end
    index += 1
  end
  name = name_letters.join

  p name
end

next_vowel("JOHN")
=end





