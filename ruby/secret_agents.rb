# Release 2: Build an Encryption Program
	
# Pseudocode for "Encrypt"

# 1. Input Password
# 2. Get password length
# 3. Loop through each letter within the string
# 4. Advance each letter within string to the next letter in the Alphabet
# 5. Return the new string

def encrypt(password)

	index = 0

	while index < password.length
		if password[index] == "z"
			password[index] = "a"
		else
			password[index] = password[index].next
		end

		index += 1
	end
	puts password
end

# Pseudocode for "Decrypt"

# 1. Input Password
# 2. Get password length
# 3. Loop through each letter with the string
# 4. For each letter within the string, find the index according to the Alphabet
# 5. Change each letter within the string to the previous letter in the Alphabet
# 6. Return the new string

def decrypt(password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	index = 0

	while index < password.length
		each_letter = password[index] # Gets each letter within 'password' variable and stores within 'each_letter' variable individually
		letter_index = alphabet.index(each_letter) # Gets the index of 'each_letter' according to the Alphabet and stores within 'letter_index' variable
		new_letter = alphabet[letter_index - 1] # Subtracts 'letter_index' - 1, which means it will go to the previous letter according to the Alphabet and store the new letter within 'new_letter' variable
		password[index] = new_letter # Get the current letter, 'password[index] and store 'new_letter' into that space

		index += 1
	end
	puts password
end


encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")










