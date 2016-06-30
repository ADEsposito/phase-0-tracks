# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split input
  # set default quantity
  # loop through array
      # convert item at each index to a key
      # apply default quantity as a value
  # now have a hash, array is no longer relavent
  # print the list to the console [can you use one of your other methods here?]
# output: print hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # arguments for method are the hash, item, quantity
      # quantity will default to 1 unless user chooses to enter new value
  # add item (key) and quantity (value) to hash
# output: hash with item added

# Method to remove an item from the list
# input: item name
# steps:
  # arguments for method are the hash and item
  # search hash for item
  # delete item (and quantity)
# output: hash with item removed

# Method to update the quantity of an item
# input: item and new quantity
# steps:
  # arguments for method are hash, item, quantity
  # search hash for item
  # update quantity
# output: hash with quantity of item updated

# Method to print a list and make it look pretty
# input: the hash
# steps:
  # print heading for list
  # loop through hash
    # print item (key) and quantity (value) in manner that's easy for user to read
# output: print out of key/value pairs in easy to read manner

$detailed_groceries = {}

def print_list(hash)
	p "GROCERY LIST"
	$detailed_groceries.each do |item, quantity|
		p "#{item} : #{quantity}"
	end
end

def create_list(grocery_items)
	grocery_array = grocery_items.split(' ')
	grocery_array.each { |item| $detailed_groceries[item] = 1 }
	print_list($detailed_groceries)
	return $detailed_groceries
end

def add_to_list(hash, item, quantity = 1)
	$detailed_groceries[item] = quantity
	return $detailed_groceries
end

def remove_from_list(hash, item)
	$detailed_groceries.delete(item)
	return $detailed_groceries
end

def update_list(hash, item, quantity)
	$detailed_groceries[item] = quantity
	return $detailed_groceries
end


def get_input
	exit = false

	until exit
		puts "- To CREATE a list press 'C'"
		puts "- To ADD to your list press 'A'"
		puts "- To REMOVE an item from your list press 'R'"
		puts "- To UPDATE the quantity of an item press 'U'"
		puts "- To PRINT your list press 'P'"
		puts "- To EXIT press 'E"

		choice = gets.chomp

		if choice == 'C'
			puts "Please enter the items you wish to add, separating each item with a space (example: carrots apples cereal pizza) :"
			grocery_items = gets.chomp
			create_list(grocery_items)
			exit = false
		end

		if choice == 'A'
			puts "What item would you like to add?"
			item = gets.chomp
      puts "How many would you like to add?"
      quantity = gets.chomp
			add_to_list(hash, item, quantity)
			puts "#{item} has been added with a quantity of #{quantity}."
			exit = false
		end

		if choice == 'R'
			puts "What item would you like to remove?"
			item = gets.chomp
			remove_from_list(hash, item)
			puts "#{item} has been removed from your list."
			exit = false
		end

		if choice == 'U'
			puts "What item would you like to update?"
			item = gets.chomp
			puts "What is the new quantity you would like for #{item}?"
			quantity = gets.chomp
			update_list(hash, item, quantity)
			puts "#{item} has been updated to have a quantity of #{quantity}."
			exit = false
		end

		if choice == 'P'
			print_list(hash)
			exit = false
		end

		if choice == 'E'
			puts "Thank you for using 'GROCERY LIST'"
			exit = TRUE
		end
	end
end

get_input


# Test run using iTerm
#ruby :> ruby gps2_2.rb
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#C
#Please enter the items you wish to add, separating each item with a space (example: carrots apples cereal pizza) :
#apple cereal
#"GROCERY LIST"
#"apple : 1"
#"cereal : 1"
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#A
#What item would you like to add?
#lemonade
#How many would you like to add?
#2
#lemonade has been added with a quantity of 2.
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#A
#What item would you like to add?
#tomatoes
#How many would you like to add?
#3
#tomatoes has been added with a quantity of 3.
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#A
#What item would you like to add?
#onions
#How many would you like to add?
#1
#onions has been added with a quantity of 1.
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#A
#What item would you like to add?
#icecream
#How many would you like to add?
#4
#icecream has been added with a quantity of 4.
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#R
#What item would you like to remove?
#lemonade
#lemonade has been removed from your list.
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#U
#What item would you like to update?
#icecream
#What is the new quantity you would like for icecream?
#1
#icecream has been updated to have a quantity of 1.
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#P
#"GROCERY LIST"
#"apple : 1"
#"cereal : 1"
#"tomatoes : 3"
#"onions : 1"
#"icecream : 1"
#- To CREATE a list press 'C'
#- To ADD to your list press 'A'
#- To REMOVE an item from your list press 'R'
#- To UPDATE the quantity of an item press 'U'
#- To PRINT your list press 'P'
#- To EXIT press 'E
#E
#Thank you for using 'GROCERY LIST'

ruby :>
