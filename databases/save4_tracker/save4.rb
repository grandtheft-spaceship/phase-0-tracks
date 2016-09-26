require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("savings.db")
db.results_as_hash = true

create_savings_table = <<-SQL
  CREATE TABLE IF NOT EXISTS savings(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    total_amount INT,
    amount_saved INT,
    purchase_date TEXT
  )
SQL

# Create db
db.execute(create_savings_table)

def create_new_item(db, name, total_amount, amount_saved, purchase_date)
  db.execute("INSERT INTO savings (name, total_amount, amount_saved, purchase_date) VALUES (?, ?, ?, ?)",[name, total_amount, amount_saved, purchase_date])
end

def make_deposit(db, name,  deposit_amount)
  amount_saved = db.execute(<<-SQL
    SELECT amount_saved 
    FROM savings
    WHERE name="#{name}"
  SQL
)
  amount_saved = amount_saved[0][0]

  total_amount = db.execute(<<-SQL
  SELECT total_amount 
  FROM savings 
  WHERE name="#{name}"
  SQL
)
  total_amount = total_amount[0][0]
  amount_saved = amount_saved + deposit_amount
  outstanding_balance = total_amount - amount_saved

  db.execute(<<-SQL
  UPDATE savings 
  SET amount_saved="#{amount_saved}" 
  WHERE name="#{name}"
  SQL
)

  puts "You have deposited #{deposit_amount} dollars!"
  puts "The total amount you have saved is #{amount_saved} dollars!"
  puts "You have #{outstanding_balance} dollars left until you reach your goal!"
end

def print_list(db)
  savings = db.execute("SELECT * FROM savings")

  puts "YOUR COMPLETE SAVE4 LIST:"

  puts "................................................"

  savings.each do |saving|
    puts "ITEM: #{saving['name']},"
    puts "TOTAL AMOUNT: #{saving['total_amount']},"
    puts "AMOUNT SAVED: #{saving['amount_saved']},"
    puts "DESIRED PURCHASE DATE: #{saving['purchase_date']}"

    puts "................................................"
  end
end

def delete_item(db, name)
  db.execute(<<-SQL
    DELETE FROM savings
    WHERE name="#{name}"
    SQL
  )
end

# Test
# db.execute("INSERT INTO savings (name, total_amount, amount_saved, purchase_date) VALUES ('Guitar', 130.00, 0, '2017-04-20')")

# make_deposit(db, 'Guitar', 50)
# print_list(db)
# delete_item(db, "Guitar")
# print_list(db)

############# USER INTERFACE #############

puts "Hello! Welcome to Save4; a tracker-type application that allows you to list items you wish to purchase and keep track of your current progress in reaching that goal."

puts "Would you like to view your list, update a goal, create a new goal, or delete a goal? (Please type either 'view', 'update', 'create', 'delete')"

user_reply = gets.chomp

  if user_reply == "view"
    print_list(db)
  elsif user_reply == "update"
    puts db.execute(<<-SQL
      SELECT name
      FROM savings
      SQL
    )

    puts "Please enter the name of the item you would like to update"
    item_name = gets.chomp
    puts "Please enter the amount you are adding to save for this item."
    deposit_amount = gets.chomp
    deposit_amount = deposit_amount.to_i

    make_deposit(db, item_name, deposit_amount)
    print_list(db)
  elsif user_reply == "create"
    puts "Please enter the name of the item you would like to track"
    item_name = gets.chomp
    puts "Please enter the total cost of the item"
    total_cost = gets.chomp
    puts "If any, please enter the amount you have saved, thusfar, for this item. If none, please enter 0"
    total_savings = gets.chomp
    puts "Please enter the date of when you would like to purchase the item by. Please use the following format 'YYYY-MM-DD'"
    purchase_date = gets.chomp

    create_new_item(db, item_name, total_cost, total_savings, purchase_date)
    print_list(db)
  elsif user_reply == 'delete'
    puts "Please enter the name of the item you wish to delete"
    item_name = gets.chomp

    delete_item(db, item_name)
    print_list(db)
  else
    puts "Please enter a valid response"
  end







