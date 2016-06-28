
# change all vowels to next vowel in 'aeiou'
#def next_vowel(string)
  #index_i = 0
  #str_length = string.length
  #reference = "aeiou"

  #until index_i == (str_length)
    #if string[index_i] == "u"
      #string[index_i] = "a"
    #elsif string[index_i] == " "
      #string[index_i] = string[index_i]
    #else
      #string[index_i] = reference[reference.index(string[index_i]) + 1]
    #end
    #index_i += 1
  #end
  #string = string
#end

#DEBUGGING TEST:
#puts "Vowels changed: " + next_vowel(new_first_name).capitalize + " " + next_vowel(new_last_name).capitalize

# change all consonants to next consonant
#def next_consonant(string)
  #index_i = 0
  #str_length = string.length
  #reference_consonants = "bcdfghjklmnpqrstvwxyz"

  #until index_i == (str_length)
    #if string[index_i] == " "
      #string[index_i] = string[index_i]
    #elsif string[index_i] == "z"
      #string[index_i] = "b"
    #else
      #string[index_i] = reference_consonants[reference_consonants.index(string[index_i]) + 1]
    #end
    #index_i += 1
  #end
  #string = string
#end

#DEBUGGING TEST:
#puts "Consonants changed: " + next_consonant(new_first_name).capitalize + " " + next_consonant(new_last_name).capitalize



real_name_array = []
alias_name_array = []
real_name = nil

until real_name == "exit"
  # ask user to enter spy's real name
  puts "Please enter the spy's real name: "

  # store real name in a variable
  real_name = gets.chomp.downcase

  # swap first and last name
  split_name = real_name.split(' ')
  swapped_name = split_name.reverse
  new_first_name = swapped_name[0]
  new_last_name = swapped_name[1]

  def convert_name(string)
    index_i = 0
    str_length = string.length
    reference_vowels = "aeiou"
    reference_consonants = "bcdfghjklmnpqrstvwxyz"

    until index_i == (str_length)
      if string[index_i] == " "
        string[index_i] = string[index_i]
      elsif string[index_i] == "a"
        string[index_i] = reference_vowels[reference_vowels.index(string[index_i]) + 1]
      elsif string[index_i] == "e"
        string[index_i] = reference_vowels[reference_vowels.index(string[index_i]) + 1]
      elsif string[index_i] == "i"
        string[index_i] = reference_vowels[reference_vowels.index(string[index_i]) + 1]
      elsif string[index_i] == "o"
        string[index_i] = reference_vowels[reference_vowels.index(string[index_i]) + 1]
      elsif string[index_i] == "u"
        string[index_i] = "a"
      elsif string[index_i] == "z"
        string[index_i] = "b"
      else
        string[index_i] = reference_consonants[reference_consonants.index(string[index_i]) + 1]
      end
      index_i += 1
    end
    string = string
  end

  alias_name = convert_name(new_first_name).capitalize + " " + convert_name(new_last_name).capitalize

  puts real_name_array.push(real_name.capitalize).to_s + " is: " + alias_name_array.push(alias_name).to_s
end
