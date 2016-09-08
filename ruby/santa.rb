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

end

gender = ["Agender", "Female", "Bigender", "Male", "Female", "Gender-Fluid"]

ethnicity = ["Polynesian", "Asian", "African", "European", "Latino", "Middle Eastern"]

orientation = ["Lesbian", "Gay", "Straight", "Bi", "Transgender", "Queer"]

religion = ["Buddhism", "Isalm", "Christianity", "Judaism", "Taoism", "Sikhism"]

all_santas = []

gender.length.times do |which_santa|
  all_santas << Santa.new(gender[which_santa], ethnicity[which_santa], orientation[which_santa], religion[which_santa])
end

p all_santas


