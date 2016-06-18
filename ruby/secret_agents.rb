#Andrew Palmes
#Ann D'Esposito

# Encryption Method Pseudocode

# Obtain string of input
# Find the the length of the string
# Length to find correct index
# loop through the character array
# for each character of index, shift char forward

def encrypt (string) # assunme msg is a string
	index_i = 0
	str_len = string.length
	
	until index_i == (str_len)
		if string[index_i] == "z"
			string[index_i] = "a"
		elsif string[index_i] == " "
			string[index_i] = string[index_i]		
		else
			string[index_i] = string[index_i].next
		end	
		index_i += 1
	end
	string = string
end


# Decryption Method Pseudocode

# Obtain string of input
# Find the the length of the string
# Length to find correct index
# compare each chracter to an index in the alphabet
# re-assign the value of the current character to the previous char in the alphabet
# special cases a = z. " " = " "

def decrypt(string)
	#puts "START DIAG"
	index_i = 0
	str_len = string.length
	#puts "STRING SIZE #{str_len}"
	reference = "abcdefghijklmnopqrstuvwxyz"

	until index_i == (str_len)
		if string[index_i] == "a"
			string[index_i] = "z"
		elsif string[index_i] == " "
			string[index_i] = string[index_i]		
		else
			string[index_i] = reference[reference.index(string[index_i])-1] 
		end
		index_i += 1	
	end
	string = string # return last variable declared
end

#main

# RELEASE 4
# To all agents: decrypt and encrypt are inverse functions of each other. Performing
# a nested method call of both decrypt and encrypt will result in the return of
# the original password string.

#first, decrypt is called and expects whatever string in the parameter to be returned in a decrypted state.
	#puts decrypt(encrypt("swordfish"))
#second, within the parameter of decrypt, lies the method call of encrypt(text)e
	#puts decrypt("txpsegjti")
#Now now we must expect the encrypt method to return a string (encrypted form) that will then be returned to decrypt
	#puts "swordfish"

puts "Would you like to decrypt or encrypt a password? (d for decrypt/e for encrypt)"
choice = gets.chomp

if choice == "d"
	puts "Enter your password"
	pass = gets.chomp
	puts "Decrypted Password: " + decrypt(pass)
elsif choice == "e"
	puts "Enter your password"
	pass = gets.chomp
	puts "Encrypted Password: " + encrypt(pass)
else
	puts "invalid option"
end