class Santa
  attr_reader  :gender, :ethnicity, :orientation, :religion, :favorite_cookie, :milk_type
  attr_accessor :age

  def initialize(gender, ethnicity, orientation, religion, favorite_cookie, milk_type)
    @gender = gender
    @ethnicity = ethnicity
    @orientation = orientation
    @religion = religion
    @favorite_cookie = favorite_cookie
    @milk_type = milk_type
    @age = 0
    @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_flavor)
    puts "That was the best #{cookie_flavor} cookie I've ever eaten!"
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(name)
    puts "You messed up big time #{name}!!!"

    @reinder_ranking.rotate!
  end

end

gender = ["Agender", "Female", "Bigender", "Male", "Female", "Gender-Fluid"]
ethnicity = ["Polynesian", "Asian", "African", "European", "Latino", "Middle Eastern"]
orientation = ["Lesbian", "Gay", "Straight", "Bi", "Transgender", "Queer"]
religion = ["Buddhism", "Isalm", "Christianity", "Judaism", "Taoism", "Sikhism"]
favorite_cookie = ["Chocalate Chip", "Sugar", "Snickerdoodle", "Oatmeal", "White Chocalate Chip", "Oreos"]
milk_type = ["1%", "2%", "Fat Free", "Vitamin D", "Low Fat", "Organic"]
age_range = (0..140).to_a

santa_list = []

100.times do |santa|

  random_gender = gender.sample
  random_ethnicity = ethnicity.sample
  random_orientation = orientation.sample
  random_religion = religion.sample
  random_cookie = favorite_cookie.sample
  random_milk = milk_type.sample
  random_age = age_range.sample

  santa = Santa.new(random_gender, random_ethnicity, random_orientation, random_religion, random_cookie, random_milk)
  santa.age = random_age

  santa_list << santa
end

puts "............................................."
puts "Complete Santa Registration List:"
puts "............................................."

santa_list.each_with_index do |santa, index|
  puts "Santa Number: #{index + 1}"
  puts "Age: #{santa.age}"
  puts "Gender: #{santa.gender}"
  puts "Ethncity: #{santa.ethnicity}"
  puts "Orientation: #{santa.orientation}"
  puts "Religion: #{santa.religion}"
  puts "Favorite Cookie: #{santa.favorite_cookie}"
  puts "Preferred Milk Type: #{santa.milk_type}"

  puts "............................................."
end


=begin

class Santa
  attr_reader  :ethnicty, :orientation, :religion
  attr_accessor :gender

  def initialize(gender, ethnicity, orientation, religion)
    @gender = gender
    @ethnicity = ethnicity
    @orientation = orientation
    @religion = religion
    @age = 0
    @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_flavor)
    puts "That was the best #{cookie_flavor} cookie I've ever eaten!"
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(name)
    puts "You messed up big time #{name}!!!"

    @reinder_ranking.rotate!
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender=(new_gender)
    @gender = new_gender
  end

end

gender = ["Agender", "Female", "Bigender", "Male", "Female", "Gender-Fluid"]
ethnicity = ["Polynesian", "Asian", "African", "European", "Latino", "Middle Eastern"]
orientation = ["Lesbian", "Gay", "Straight", "Bi", "Transgender", "Queer"]
religion = ["Buddhism", "Isalm", "Christianity", "Judaism", "Taoism", "Sikhism"]

all_santas = []

gender.length.times do |santa|
  all_santas << Santa.new(gender[santa], ethnicity[santa], orientation[santa], religion[santa])
end

puts "All Santas have been created! Plesae verify correct information:"

all_santas.each_with_index do |santa_num, index|
  puts "....................................."

  puts "Santa Number: #{index + 1}"
  puts "Age: #{santa_num.age}"
  puts "Ethnicity: #{santa_num.ethnicity}"
  puts "Gender: #{santa_num.gender=("Female")}"

  puts "....................................."
end

all_santas[2].celebrate_birthday

puts "Special Announcement! Today is Santa Number: 3's birthday! She is now #{all_santas[2].age} Winter-Solstice old!"

puts "....................................."

puts "*Santa Number: 3 goes outside to watch the Northern Lights and finds Rudolph eating her birthday cake!!! "

puts "Santa Number: 3, New Reindeer Ranking Order: #{all_santas[2].get_mad_at("Rudolph")}"
=end


