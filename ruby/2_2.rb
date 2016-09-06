# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #split the string input into an array
  #create empty hash of the grocery list
  #iterate using EACH in the array of items to create the hash keys
  # set default quantity
  # print the list to the console (use print_list method)
# output: hash with keys as item name and the values as default amount of 1

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: set list to item name and quantity
# output: updated hash with new item/quantity (key/value) pair

# Method to remove an item from the list
# input: list, item name/key name that you want to remove
# steps: use DELETE method to remove the key/value
# output: updated hash with item removed

# Method to update the quantity of an item
# input: list, item name and number you want to update it to
# steps: call the hash name with the item you want to remove and set it EQUAL to the new quantity  
# output: updated hash with new quantity 

# Method to print a list and make it look pretty
# input: hash name
# steps: iterate through the hash with EACH to print a string with the item/quantity pair
# output: a pretty set of strings that show the item and amount

def create_list(string)
  item_array = string.split(' ')
  grocery_list = {}

  item_array.each do |item|
    grocery_list[item] = 1
  end
  return grocery_list
end

def add_item(list, item_name, quantity)
  list[item_name] = quantity
  return list
end

def remove_item(list, item_name)
  list.delete(item_name)
  return list
end

def update_item(list, item_name, quantity)
  list[item_name] = quantity
  return list
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end


#TEST CODE
groceries = create_list("lemonade, tomatos, onions, ice-cream")
add_item(groceries, "lemonade", 2)
add_item(groceries, "tomatos", 3)
add_item(groceries, "onions", 1)
add_item(groceries, "ice-cream", 4)
remove_item(groceries, "lemonade")
update_item(groceries, "ice-cream", 1)
print_list(groceries)






