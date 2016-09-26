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








