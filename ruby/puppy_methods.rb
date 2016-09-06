class Puppy

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

Spike = Puppy.new
Spike.fetch("ball")
Spike.speak(3)
Spike.roll_over
Spike.dog_years(5)
Spike.sit