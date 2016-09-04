=begin
	
Release 3: Interior Designer Program

1. Allow following data to be entered:
  * client name
  * age
  * number of children
  * type of room
  * decor theme
  * favorite colors
  * 
	
=end


client = {}

puts "Hello! Welcome to Grandtheft Design Studios! My name is Jean-Lucc Pierre de Hammerstand."
puts "And may I have your name please?"

client[:name] = gets.chomp

name_array = client[:name].split(" ").to_a

puts "Great to meet you #{name_array[0]}!"

puts "By the way, how old are you?"

client[:age] = gets.chomp

puts "Wow! You look 3 years younger than #{client[:age]}!"

puts "Do you have any children? (Please answer yes/NO)"

client[:has_children] = gets.chomp

  until client[:has_children] == "yes" || client[:has_children] == "NO"
    puts "Please answer 'yes' or 'NO' only"

    client[:has_children] = gets.chomp
  end

  if client[:has_children] == "yes"
    puts "Nice! How many do you have?"

    client[:number_of_children] = gets.chomp

    puts "#{client[:number_of_children]}?! You sure do have your hands full!"
  else client[:has_children] == "NO"
    puts "Oh, that's ok! I don't have any myself."
  end


puts "Now that we have the introductions out of the way...Let's talk about the design you have in mind..."

puts "First of all, what function will the room be serving? (Please answer 'master bedroom', 'living room', 'kitchen', 'family room')"

client[:room_type] = gets.chomp
client[:room_type] = client[:room_type].capitalize

puts "Perfect, the #{client[:room_type]} a great place to start."

puts "What kind of decor theme are you interested in?"

client[:decor_theme] = gets.chomp
client[:decor_theme] = client[:decor_theme].capitalize

puts "Excellent choice! I'm an expert in #{client[:decor_theme]} design!"

puts "What are your favorite colors? (Please type colors, one-by-one, in order from most-favorite to least-favorite. Please type 'done' when completed)"

listed_colors = gets.chomp
listed_colors = listed_colors.capitalize

favorite_colors = []
favorite_colors << listed_colors

loop do
  if listed_colors == "Done"
    break
  else
    listed_colors = gets.chomp
    listed_colors = listed_colors.capitalize

    favorite_colors << listed_colors
  end
end

favorite_colors.delete("Done")

client[:favorite_color] = favorite_colors[0]
client[:second_color] = favorite_colors[1]

puts "Mhmm, I think #{client[:favorite_color]} and #{client[:second_color]} would be excellent anchor colors for the room."

puts "I think we have enough information to get started..."
puts "Let me just verify that we have all the right information. Please double check everything to make sure it is all correct"

puts ".................................."
puts "Name: #{client[:name]}"
puts "Age: #{client[:age]}"
puts "Has Children: #{client[:has_children]}"
  
  if client[:has_children] == "yes"
    puts "Number of Children: #{client[:number_of_children]}"
  end

puts "Room type: #{client[:room_type]}"
puts "Decor Theme: #{client[:decor_theme]}"
puts "Favorite Colors: #{client[:favorite_color]} #{client[:second_color]}"
puts ".................................."

p client

puts ".................................."

puts "Are there any corrections you need to make? (Please answer 'yes' or 'NO'"

user_corrections = gets.chomp

  if user_corrections == 'yes'
    puts "Which area do you need to correct? (Please type 'Name', 'Age', 'Has Children', 'Number of Children', 'Room Type', 'Decor Theme', or 'Favorite Colors'"

      corrected_area = gets.chomp

      if corrected_area == 'Name'
        puts "Please enter correct name:"
        client[:name] = gets.chomp
      elsif corrected_area == "Age"
        puts "Please enter correct age:"
        client[:age] = gets.chomp
      elsif corrected_area == "Has Children"
        puts "Do you have children? (Please type 'yes' or 'NO'"
        client[:has_children] = gets.chomp

        if client[:has_children] == 'yes'
          puts "How many?"
          client[:number_of_children] = gets.chomp
        end

      elsif corrected_area == "Room Type"
        puts "Please enter correct room type:"
        client[:room_type] = gets.chomp
      elsif corrected_area == "Decor Theme"
        puts "Please enter correct decor theme:"
        client[:decor_theme] = gets.chomp
      elsif corrected_area == "Favorite Colors"
        puts "Please enter correct favorite colors starting with most favorite: (Please enter each color, one-by-one, and type 'Done' when complete)"

        listed_colors = gets.chomp
        listed_colors = listed_colors.capitalize

        favorite_colors = []
        favorite_colors << listed_colors

        loop do
          if listed_colors == "Done"
            break
          else
            listed_colors = gets.chomp
            listed_colors = listed_colors.capitalize

            favorite_colors << listed_colors
          end
        end
      else
      puts "Great! I'll finish all the paperwork and get back to you with a proposal within the next 2-3 business days!"
    end
  end

puts ".................................."

p client

puts ".................................."

        
      













