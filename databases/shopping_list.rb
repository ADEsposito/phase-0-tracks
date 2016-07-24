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
def add_to_list(database, item, quantity, store_name)
  $database.execute("INSERT INTO shopping (item, quantity, store_name) VALUES (?, ?, ?)", [item, quantity, store_name])
  $database.execute("INSERT INTO stores (name) VALUES (?)", [name])
end

# method to remove item from list

# method to update quantity of item

# method to update item to purchased status

# method to display all items for a particular store

# method to display list of all items and status (purchased/not purchased)

def get_input
  exit = false

  until exit
    puts "- To ADD to your list press'A'"
    puts "- To REMOVE an item from your list press 'R'"
    puts "- To UPDATE the quantity of an item press 'U'"
    puts "- To PRINT your list press 'P'"
    puts "- To EXIT press 'E'"

    choice = gets.chomp

    if choice == 'A'
      puts "Please enter the item you wish to add :"
      item = gets.chomp
      puts "How many would you like to add?"
      quantity = gets.chomp
      puts "What store will you get #{item} from?"
      name = gets.chomp
      add_to_list($database, item, quantity, name)
      exit = false
    end

    if choice == 'E'
      puts "Thank you for using MY SHOPPING LIST"
      exit = true
    end
  end
end

get_input
