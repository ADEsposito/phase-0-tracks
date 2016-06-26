# Initialize hash
client_information = {}

# Ask for client's name
puts "What is the client's name?"
# Store client's name
name = gets.chomp

# Ask for client's age
puts "What is the client's age?"
# Store client's age
age = gets.to_i

# Ask for number of children
puts "what is the number of children?"
# Store number of children
kids = gets.to_i

# Ask for decor theme
puts "What is the decor theme?"
# Store decor theme
theme = gets.chomp

# Ask if client likes bold colors
puts "Does the client like bold colors? (y/n)"
# Store bold color preference
bold_colors = gets.chomp
if bold_colors == "y"
  bold = true
else
  bold = false
end

# Ask if client likes pastels
puts "Does the client like pastel colors? (y/n)"
# Store pastels preference
pastel_colors = gets.chomp
if pastel_colors == "y"
  pastel = true
else
  pastel = false
end

# Ask if client likes solids
puts "Does the client like solids? (y/n)"
# Store if client likes solids
solids = gets.chomp
if solids == "y"
  solid = true
else
  solid = false
end

# Ask if client likes patterns
puts "Does the client like patterns? (y/n)"
# Store if client likes patterns
patterns = gets.chomp
if patterns == "y"
  pattern = true
else
  pattern = false
end

# Store responses in hash
client_information = {:client_name => name, :client_age => age, :number_of_kids => kids, :decor_theme => theme, :likes_bold_colors => bold, :likes_pastel_colors => pastel, :likes_solids => solid, :likes_patterns => pattern}

# Print the hash back out to the screen when all questions are answered
p client_information

# Give user opportunity to update a key
# If "decor_theme" (for example) ask for a new value and update the key
# Print latest version of the hash
puts "Would you like to update a key? (y/n)"
update = gets.chomp
if update == "y"
  puts "Please enter the key you wish to update: "
  key_symbol = gets.chomp.to_sym
  puts "Please enter the new information for #{key_symbol}"
  value = gets.chomp
  client_information[key_symbol] = value
  p client_information
# If "none", do not update anything
else
  puts "Thank you."
end
