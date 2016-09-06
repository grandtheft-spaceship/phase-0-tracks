=begin

.........CLASS...........

Puppy

.........CHARACTERISTICS...........

Name: Varies
Fur Color: Varies
Eye Color: Varies
Barks loud: Yes
Friendly: Yes

.........BEHAVIOR...........

Run
Fetch
Speak
Catch
Eat

=end

class Puppy

end

p Puppy.methods
Duchess = Puppy.new
Fido = Puppy.new
Spot = Puppy.new

p Spot.class
p Duchess == Fido
p Fido.instance_of?(Array)
p Fido.instance_of?(Puppy)
# p Spot.play_dead