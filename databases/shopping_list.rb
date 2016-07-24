# require gems
require 'sqlite3'

# create SQLite3 database
database = SQLite3::Database.new("shopping.db")

create_shopping_table = <<-SQL
  CREATE TABLE IF NOT EXISTS shopping(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT,
    store_id INT,
    FOREIGN KEY (store_id) REFERENCES stores(id)
  )
SQL

# create shopping table
database.execute(create_shopping_table)
