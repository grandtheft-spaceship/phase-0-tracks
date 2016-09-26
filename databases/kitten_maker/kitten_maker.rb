# OPERATION KITTEN EXPLOSION!
# Video Notes:
# In this video, we are going to learn:
# 1. ORM
# 2. Requiring gems
# 3. Managing a database with a Ruby program
# 4. How to hook up persistent data to a Ruby program

# talk about Object Relational Mapping (ORM)

# How to take a relational database - which means a table with columns and rows that are related to each other with Primary Keys and Foreign Keys - and use it in an object-oriented language
# We don't want to work with the relational data as rows in a database, we want to use it in a scripting language - that is object-oriented - as arrays, hashes, or some other type of object that is useful for us to manipulate.
# Object relational management - similar to ORM


# require gems
# Gems are prewritten Ruby that another programmer wrote that provides methods, variables, and other logic that can be useful for your program.

# When 'requiring' a gem, notice that we are not using 'require_relative'; this is because we are not trying to access data that we wrote in another file that we wrote in another directory somewhere on our file tree
require 'sqlite3'
# 'faker' is a gem that allows us to create 'fake data' and populate a database that we can then use for testing out features of our applications
require 'faker'

# When trying to use a gem, you have to make sure that you have the gem installed on your system.

#  $ gem install faker
  # Quick Note: Running '!ruby' in your terminal will run the last ruby command that you made


# We've already learned how to create db's through the command line using:
# $ sqlite3 name.db

# Instead of doing it this way, we are going to learn the Ruby way to create a db using the sqlite3 gem
#    1. First, we'll need to 'require' the gem 
# create SQLite3 database
db = SQLite3::Database.new("kittens.db") 
# 2. This command will create a new db or open an existing one. Then we store it in a variable called 'db'. If we wanted to, we can use a 'global variable' or a 'constant', such as $DATABASE, that won't ever change. This can be somewhat dangerous when working on larger programs with multiple programmers because if another programmer delcared the same global variable, it can make things messy and create errors. It is a design decision to make when creating applications.

# After creating this line and running the program, we can run the 'ls' command and we should see the 'kittens.db' file now created
db.results_as_hash = true
# By default, our results - each 'kitten' in the 'kittens' - are a nested array. The 'instance attribute method' '.results_as_hash' will convert each kitten into a hash that is nested within an array. This makes more sense for our example because each kitten has structured labels.

# learn about fancy string delimiters
# So far, we've learned to create 'strings' using either double-quotes or single-quotes. However, Ruby actually has other ways that we can declare a string. These other methods of creating a string can be useful because it allows us to use single-quotes or double-quotes within our string without producing errors or having to escape each quotation mark.

 # 'SQL', used below, is a 'fancy string delimiter' known as a 'heredoc'. The synatx: 
#     <<- ANYWORD (Equivalent to an opening quote)(The 'ANYWORD' you decide to use really can be anything, so long as it's a string that will NOT show up in your actual string's body)
#     string text string text string text
# ANYWORD (Equivalent to a closing qutote)

# While this looks like SQL, it's actually not. This is really just a regular Ruby string that will eventually get passed to a method that will run it as SQL on the db. 

# create a kittens table (if it's not there already)
  # The "IF NOT EXISTS" is SQL saying to only create a table named 'kittens', IF it does not already exist. The is an example of persistent data. We are now beginning to deal with data that doesn't get reset everytime we open/close a program. 

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# The .execute method allows us to run our fancy string delimiter. It will run the string as SQL on the db
db.execute(create_table_cmd)
# Quick Note: When using SQL with a Ruby program, we don't need to capitalize. For example:
# Instead of writing: SELECT * FROM kittens;
# We can just type: select * from kittens;
# While both work just fine, the first option makes it more readable for other programmers reading your logs and such.

# add a test kitten
#db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# explore ORM by retrieving data
# Here, we are going to explore how the object relational mapper retrieves our data
kittens = db.execute("SELECT * FROM kittens")
  # puts kittens.class # Here, we want to use what kind of object kittens is; is it a hash, an array...? With ORM things, it's really good to use the .class method to verify what kind of object something is. While it may look like a hash/array, it could sometimes be a specialized, proprietary version of a hash/array. This can be a good thing because that means it could have more methods that you can call on it that aren't part of the base hash/array object classes. 
  # # Also, some ORM gems include other types of Data Structures to work with that have built-in "magic" that aren't included with the base Array/Hash objects, but look like arrays/hashes because they were built off those base strucutures.
  # p kittens

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion

# Quick Note: We don't need to use a method - #create_kitten - here; we could have instead used a block 
# Here, we are defining a method that will allow us to add more rows to our kittens table. We have to pass in 'db' as an argument because we didn't make it a global variable. Everything else looks pretty similar to the things we've learned thus far; however, you'll see that after 'VALUES' we are using something different. This is because we don't want the arguments that are being passed to be directly added to the db; this is called 'SQL Injection'. It is commonly bad practice to allow just anybody direct access to the db. 
# Instead, we can use the '?' as placeholders; the 'SQL string' will act as the first argument for the method '.execute' and then we can pass the actual values as an array, in the order that they appear, as the second argument
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

# Here, you'll see that we use the 'Scope Resolution Operator', accessible from the Faker gem we required earlier, to help us create fake names.
10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# Here, you'll notice that interpolation works similar to how we've learned; the key difference is that instead of using symbols, the gem we are using requires that we use strings.
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end


