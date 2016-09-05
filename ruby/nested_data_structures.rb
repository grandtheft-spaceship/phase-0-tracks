=begin
  
Release 2: Design and Build a Nested Data Structure

1. Backpack and its contents
2. Break it down to compartments and contents
=end

backpack = {
  main_compartment: {
    devices: [
      "Laptop",
      "Tablet",
    ],
    school_items: [
      "Binder",
      "Notebook",
      "Text Book"
    ]
  },
  secondary_compartment: {
    clothing: {
      number_of_tops: 2,
      number_of_bottoms: 1,
      number_of_paired_socks: 2
    }
  },
  primary_utility_compartment: {
    snacks: [ 
      "Granola Bar",
      "Goldfish Crackers",
      "Honey-Roasted Peanuts",
      "Turkey Jerky"
    ]
  },
  secondary_utility_compartment: {
    school_items: [
      "Mini Notebook",
      "Flash Cards"
    ]
  },
  tool_compartment: {
    writing_instruments: {
      number_of_pencils: 1,
      number_of_pens: 4,
      number_of_highliters: 3,
      number_of_markers: 2,
      number_of_erasers: 1,
      number_of_packs_of_lead: 2,
    }
  }
}

backpack[:main_compartment][:devices][-1] = "Wacom Tablet"
p backpack[:main_compartment][:devices]

backpack[:main_compartment][:devices] << "Mechanical Keyboard"
p backpack[:main_compartment][:devices]

backpack[:main_compartment][:school_items].push("Homework")
p backpack[:main_compartment][:school_items]

backpack[:secondary_compartment][:clothing][:number_of_paired_socks] = 3
p backpack[:secondary_compartment][:clothing]

backpack[:primary_utility_compartment][:snacks] << "Hawaiian Chips"
p backpack[:primary_utility_compartment]

backpack[:secondary_utility_compartment][:school_items].push("School Map")
p backpack[:secondary_utility_compartment]

backpack[:tool_compartment][:writing_instruments][:number_of_pencils] = 2
p backpack[:tool_compartment]

puts "................................................"

p backpack






