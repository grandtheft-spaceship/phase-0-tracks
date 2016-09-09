module Shout
  def yell_angrily(words)
    p words + "!!!" + " >:["
  end

  def yell_happily(words)
    p "¡" + words + "!"
  end 
end

class Student
  include Shout
end

class Teacher
  include Shout
end

teacher = Teacher.new
student = Student.new

teacher_words = "You're going to the principal's office"
student_words = "Yay! I get to go home early"

teacher.yell_angrily(teacher_words)
student.yell_happily(student_words)






=begin
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
=end