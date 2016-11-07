=begin
Species ----------
	
Characteristics ----------
Muzzle Length: varies
Loyal: yes or no
Energetic: yes or no
Name: varies
Color: varies
Ear Shape: varies
Tail Length: varies
Energy: varies
	
Behavior ----------
Eat
Sleep
Play
Protect
=end

# Creates the Puppy class
class Puppy
end

# Creates new instances within the Puppy class
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

# Will determine the class that spot is an instance of.
spot.class

# While both duchess and fido are both an instance of the Puppy class, they are not the same instance and will return false.
duchess == fido

# Since there's no arrays within Puppy, then the Array query will return false.
fido.instance_of?(Array)

# Since fido is an instance of the Puppy class, the Puppy query will return true.
fido.instance_of?(Puppy)

# Will return an error, since there isn't a built-in method for play_dead yet.
spot.play_dead