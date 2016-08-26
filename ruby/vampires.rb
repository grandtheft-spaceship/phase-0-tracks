# Release 1: Interview with the Vampire

=begin

puts "Hello! Welcome to Werewolf Inc. My name is Justin. What's your name?"

name = gets.chomp

puts "Nice to meet you #{name}!"

puts "How old are you?"

age = gets.chomp

puts "#{age}?! I remember the days when I was that young..."

puts "What year were you born?"

year = gets.chomp

puts "Wow! #{year} was also the year my younger brother was born!"

puts "By the way, are you hungry? Our chef in the cafeteria makes the best garlic bread! Want to try some? Please answer (yes/NO)"

garlic = gets.chomp

puts "Last thing. Our company has excellent healthcare benefits! Would you like to sign up? Please answer (yes/NO)"

healthcare = gets.chomp

=end

=begin 

# Release 2: Detection Logic

vampire_detector = ""

puts "Hello! Welcome to Werewolf Inc. My name is Justin. What's your name?"

name = gets.chomp

puts "Nice to meet you #{name}!"

	if name == "Drake Cula" || name == "Tu Fang"
		real_name = false
	else
		real_name = true
	end

puts "How old are you?"

age = gets.chomp
age = age.to_i

puts "#{age}?! I remember the days when I was that young..."

puts "What year were you born?"

year = gets.chomp
year = year.to_i

puts "Wow! #{year} was also the year my younger brother was born!"

current_year = Time.now.year
	
	if current_year - year == age
		real_dob = true
	else
		real_dob = false
	end

puts "By the way, are you hungry? Our chef in the cafeteria makes the best garlic bread! Want to try some? Please answer (yes/NO)"

garlic = gets.chomp

if garlic == "yes"
	wants_garlic = true
else
	wants_garlic = false
end

puts "Last thing. Our company has excellent healthcare benefits! Would you like to sign up? Please answer (yes/NO)"

healthcare = gets.chomp

if healthcare == "yes"
	wants_healthcare = true
else
	wants_healthcare = false
end

	if !real_name
		vampire_detector = "Definitely a vampire"
	elsif real_dob && ( wants_garlic || wants_healthcare )
		vampire_detector = "Probably not a vampire"
	elsif !real_dob && !wants_garlic && !wants_healthcare
		vampire_detector = "Almost certainly a vampire"		
	elsif !real_dob && ( !wants_garlic || !wants_healthcare )
		vampire_detector = "Probably a vampire"
	else
		vampire_detector = "Results Inconclusive"
	end

puts "Vampire Detection Result: #{vampire_detector}"

=end

=begin
	
# Release 3: Process Multiple Employees

puts "Hello! Before we start. Please indicate how many employees will be participating in today's questionnaire..."

number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

counter = 0

while counter < number_of_employees do

	puts "Welcome to Werewolf Inc. My name is Justin. What's your name?"

	name = gets.chomp

	puts "Nice to meet you #{name}!"

		if name == "Drake Cula" || name == "Tu Fang"
			real_name = false
		else
			real_name = true
		end

	puts "How old are you?"

	age = gets.chomp
	age = age.to_i

	puts "#{age}?! I remember the days when I was that young..."

	puts "What year were you born?"

	year = gets.chomp
	year = year.to_i

	puts "Wow! #{year} was also the year my younger brother was born!"

	current_year = Time.now.year
		
		if current_year - year == age
			real_dob = true
		else
			real_dob = false
		end

	puts "By the way, are you hungry? Our chef in the cafeteria makes the best garlic bread! Want to try some? Please answer (yes/NO)"

	garlic = gets.chomp

	if garlic == "yes"
		wants_garlic = true
	else
		wants_garlic = false
	end

	puts "Last thing. Our company has excellent healthcare benefits! Would you like to sign up? Please answer (yes/NO)"

	healthcare = gets.chomp

	if healthcare == "yes"
		wants_healthcare = true
	else
		wants_healthcare = false
	end

		if !real_name
			vampire_detector = "Definitely a vampire"
		elsif real_dob && ( wants_garlic || wants_healthcare )
			vampire_detector = "Probably not a vampire"
		elsif !real_dob && !wants_garlic && !wants_healthcare
			vampire_detector = "Almost certainly a vampire"		
		elsif !real_dob && ( !wants_garlic || !wants_healthcare )
			vampire_detector = "Probably a vampire"
		else
			vampire_detector = "Results Inconclusive"
		end

		puts "Vampire Detection Results: #{vampire_detector}"
		
		counter += 1
end

=end

=begin

# Release 4: Check for Suspicious Allergies

puts "Hello! Before we start. Please indicate how many employees will be participating in today's questionnaire..."

number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

counter = 0

while counter < number_of_employees do

	puts "Welcome to Werewolf Inc. My name is Justin. What's your name?"

	name = gets.chomp

	puts "Nice to meet you #{name}!"

		if name == "Drake Cula" || name == "Tu Fang"
			real_name = false
		else
			real_name = true
		end

	puts "How old are you?"

	age = gets.chomp
	age = age.to_i

	puts "#{age}?! I remember the days when I was that young..."

	puts "What year were you born?"

	year = gets.chomp
	year = year.to_i

	puts "Wow! #{year} was also the year my younger brother was born!"

	current_year = Time.now.year
		
		if current_year - year == age
			real_dob = true
		else
			real_dob = false
		end

	puts "By the way, are you hungry? Our chef in the cafeteria makes the best garlic bread! Want to try some? Please answer (yes/NO)"

	garlic = gets.chomp

	if garlic == "yes"
		wants_garlic = true
	else
		wants_garlic = false
	end

	puts "Last thing. Our company has excellent healthcare benefits! Would you like to sign up? Please answer (yes/NO)"

	healthcare = gets.chomp

	if healthcare == "yes"
		wants_healthcare = true
	else
		wants_healthcare = false
	end

		if !real_name
			vampire_detector = "Definitely a vampire"
		elsif real_dob && ( wants_garlic || wants_healthcare )
			vampire_detector = "Probably not a vampire"
		elsif !real_dob && !wants_garlic && !wants_healthcare
			vampire_detector = "Almost certainly a vampire"		
		elsif !real_dob && ( !wants_garlic || !wants_healthcare )
			vampire_detector = "Probably a vampire"
		else
			vampire_detector = "Results Inconclusive"
		end

	puts "Ooops! Looks like I skipped a question....Sorry... "
	puts "Do you have any allergies? (Please write each allergy one by one, pressing the 'Enter' key after each allergy. When you're finished, typed 'done'."

	loop do
		allergy = gets.chomp
		allergy = allergy.downcase

		if allergy == "sunshine"
			vampire_detector = "Probably a vampire"
		elsif allergy == "done"
			break
		else
			nil
		end 
	end

		puts "........................................"
		puts "Vampire Detection Results: #{vampire_detector}"		
		puts "........................................"
	counter += 1
end

=end

# Release 5: Plot Twist

puts "Hello! Before we start. Please indicate how many employees will be participating in today's questionnaire..."

number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

counter = 0

while counter < number_of_employees do

	puts "Welcome to Werewolf Inc. My name is Justin. What's your name?"

	name = gets.chomp

	puts "Nice to meet you #{name}!"

		if name == "Drake Cula" || name == "Tu Fang"
			real_name = false
		else
			real_name = true
		end

	puts "How old are you?"

	age = gets.chomp
	age = age.to_i

	puts "#{age}?! I remember the days when I was that young..."

	puts "What year were you born?"

	year = gets.chomp
	year = year.to_i

	puts "Wow! #{year} was also the year my younger brother was born!"

	current_year = Time.now.year
		
		if current_year - year == age
			real_dob = true
		else
			real_dob = false
		end

	puts "By the way, are you hungry? Our chef in the cafeteria makes the best garlic bread! Want to try some? Please answer (yes/NO)"

	garlic = gets.chomp

	if garlic == "yes"
		wants_garlic = true
	else
		wants_garlic = false
	end

	puts "Last thing. Our company has excellent healthcare benefits! Would you like to sign up? Please answer (yes/NO)"

	healthcare = gets.chomp

	if healthcare == "yes"
		wants_healthcare = true
	else
		wants_healthcare = false
	end

		if !real_name
			vampire_detector = "Definitely a vampire"
		elsif real_dob && ( wants_garlic || wants_healthcare )
			vampire_detector = "Probably not a vampire"
		elsif !real_dob && !wants_garlic && !wants_healthcare
			vampire_detector = "Almost certainly a vampire"		
		elsif !real_dob && ( !wants_garlic || !wants_healthcare )
			vampire_detector = "Probably a vampire"
		else
			vampire_detector = "Results Inconclusive"
		end

	puts "Ooops! Looks like I skipped a question....Sorry... "
	puts "Do you have any allergies? (Please write each allergy one by one, pressing the 'Enter' key after each allergy. When you're finished, typed 'done'."

	loop do
		allergy = gets.chomp
		allergy = allergy.downcase

		if allergy == "sunshine"
			vampire_detector = "Probably a vampire"
		elsif allergy == "done"
			break
		else
			nil
		end 
	end

		puts "........................................"
		puts "Vampire Detection Results: #{vampire_detector}"		
		puts "........................................"
	counter += 1
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"














