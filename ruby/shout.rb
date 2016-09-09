module Shout
  def self.yell_angrily(words)
    words + "!!!" + " >:["
  end

  def self.yelling_happily(words)
   "!" + words + "!" + " \(^_^)/"
  end
end

p Shout.yell_angrily("You're a numbnut")
p Shout.yelling_happily("Happy Birthday")