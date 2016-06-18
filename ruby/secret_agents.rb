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
		#puts "#{index_i}"
		#puts "Before:"
		#puts string[index_i]
		#puts string[index_i].next

		if string[index_i] == "z"
			string[index_i] = "a"
		elsif string[index_i] == " "
			string[index_i] = string[index_i]		
		else
			string[index_i] = string[index_i].next
		end	



		#puts "After:"
		#puts string[index_i]
		index_i += 1
	end
	#puts string
end

def decrypt(string)
	index_i = 0
	str_len = string.length
	reference = "abcdefghijklmnopqrstuvwxyz"

	until index_i == (str_len)
		if string[index_i] == "a"
			string[index_i] = "z"
		elsif string[index_i] == " "
			string[index_i] = string[index_i]		
		else
			string[index_i] = reference[reference.index(string[index_i])-1] 


			#string[index_i] = 
		end
		index_i += 1	
	end
end



# Decryption Method Pseudocode

# Obtain string of input
# Find the the length of the string
# Length to find correct index
# loop through the character array
#


#main
test_enc = "abc zed"
test_gen = "afe"
#zed abc
#zed abc


puts "BEFORE: #{test_enc}"

encrypt(test_enc)

puts "AFTER encrypt: #{test_enc}"

decrypt(test_enc)

puts "AFTER decrypt: #{test_enc}"


test = "swordfish"
decrypt(test)
encrypt(test)