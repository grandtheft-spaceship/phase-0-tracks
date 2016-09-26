require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("savings.db")
db.results_as_hash = true

create_savings_table = <<-SQL
  CREATE TABLE IF NOT EXISTS savings(
    id INTEGER PRIMARY KEY,
    name VARCAHR(255),
    total_amount INT,
    current_amount_saved INT,
    purchase_date TEXT
  )
SQL

db.execute(create_savings_table)
