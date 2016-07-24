# require gems
require 'sqlite3'

# create SQLite3 database
$database = SQLite3::Database.new("shopping.db")

create_shopping_table = <<-SQL
  CREATE TABLE IF NOT EXISTS shopping(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT,
    store_name VARCHAR(255),
    purchased BOOLEAN
  )
SQL

# create shopping and stores table
$database.execute(create_shopping_table)

# method to add item to list
def add_to_list(database, item, quantity, store_name, purchased)
  $database.execute("INSERT INTO shopping (item, quantity, store_name, purchased) VALUES (?, ?, ?, ?)", [item, quantity, store_name, purchased])
end

# method to remove item from list
def remove_from_list(database, item)
  $database.execute("DELETE FROM shopping WHERE item = (?)", [item])
end

# method to update quantity of item
def update_quantity(database, quantity, item)
  $database.execute("UPDATE shopping SET quantity = (?) WHERE item = (?)", [quantity, item])
end

# method to update item to purchased status
def update_purchased_status(database, purchased, item)
  $database.execute("UPDATE shopping SET purchased = ('true') WHERE item = (?)", [item])
end

# method to display all items for a particular store
def display_by_store(database, item, quantity, purchased, store_name)
  display = $database.execute("SELECT item, quantity, purchased FROM shopping WHERE store_name = (?)", [store_name])
  puts store_name.upcase
  puts "**************"
  display.each do |item, quantity, purchased|
    if purchased == "false"
      purchased = "not purchased"
    else
      purchased = "purchased"
    end
    puts "ITEM: #{item} ---- QTY: #{quantity} ---- #{purchased}"
  end
end

# method to display list of all items and status (purchased/not purchased)
def display_all_items(database, item, purchased, store_name)
  display = $database.execute("SELECT item, purchased, store_name FROM shopping")
  puts "QUICK OVERVIEW"
  puts "**************"
  display.each do |item, purchased, store_name|
    if purchased == "false"
      purchased = "not purchased"
    else
      purchased = "purchased"
    end
    puts "ITEM: #{item} ---- #{purchased} ---- STORE: #{store_name}"
  end
end
# method to display all items not yet purchased with just the store
def display_not_purchased(database, item, quantity, purchased, store_name)
end

def get_input
  exit = false

  until exit
    puts "- To ADD to your list press'A'"
    puts "- To REMOVE an item from your list press 'R'"
    puts "- To UPDATE the quantity of an item press 'U'"
    puts "- To set the status of an item as PURCHASED press 'P'"
    puts "- To view your list by STORE (item/quantity/status) press 'S'"
    puts "- To view your list by ITEMS (item/status/store) regardless of store press 'I'"
    puts "- To view your only the NOT PURCHASED items within a particular store (item/quantity) press 'N'"
    puts "- To EXIT press 'E'"

    choice = gets.chomp

    if choice == 'A'
      puts "Please enter the item you wish to add :"
      item = gets.chomp
      puts "How many would you like to add?"
      quantity = gets.chomp
      puts "What store will you get #{item} from?"
      name = gets.chomp
      purchased = "false"
      add_to_list($database, item, quantity, name, purchased)
      exit = false
    end

    if choice == 'R'
      puts "What item would you like to remove?"
      item = gets.chomp
      remove_from_list($database, item)
      puts "#{item} has been removed from your list."
      exit = false
    end

    if choice == 'U'
      puts "What item would you like to update the quantity for?"
      item = gets.chomp
      puts "What is the new quantity for #{item}?"
      quantity = gets.chomp
      update_quantity($database, quantity, item)
      puts "#{item} has been updated to have a quantity of #{quantity}."
      exit = false
    end

    if choice == 'P'
      puts "What item have you purchased?"
      item = gets.chomp
      update_purchased_status($database, purchased, item)
    end

    if choice == 'S'
      puts "What store would you like to view your list for?"
      store_name = gets.chomp
      display_by_store($database, item, quantity, purchased, store_name)
    end

    if choice == 'I'
      display_all_items($database, item, purchased, store_name)
    end

    if choice == 'E'
      puts "Thank you for using MY SHOPPING LIST"
      exit = true
    end
  end
end

get_input
