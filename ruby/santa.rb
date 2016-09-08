class Santa

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
    @new_age = @age + 1
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
  puts "Santa Number: #{index + 1}"
  puts "Age: #{santa_num.age}"
  puts "Ethnicity: #{santa_num.ethnicity}"
end



