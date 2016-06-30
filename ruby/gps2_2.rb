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
