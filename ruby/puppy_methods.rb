class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do
      puts "Woof"
    end
  end

  def roll_over
    puts "*Rolls over"
  end

  def dog_years(integer)
    dog_years = integer * 7

    puts "Puppy is #{dog_years} years old."
  end

  def sit
    puts "*Sits down"
  end
end

class Cat

  def initialize 
    puts "Here's your new cat!"
  end

  def pur(integer)
    integer.times do
      puts "Purrr"
    end
  end

  def hunt(prey)
    puts "*Stalks #{prey}..."
    puts "*Kills #{prey}..."
    puts "*Eats #{prey}!"
  end
end

cat_array = []
counter = 1

while counter <= 50
  puts "Cat#{counter}:"
  new_cat = Cat.new

  cat_array << new_cat

  counter += 1
end

cat_array.each_with_index do |cat, index|
    p "Cat#{index+1}:"
    cat.pur(3)
    cat.hunt("mouse")
end


=begin
Spike = Puppy.new
Spike.fetch("ball")
Spike.speak(3)
Spike.roll_over
Spike.dog_years(5)
Spike.sit
=end