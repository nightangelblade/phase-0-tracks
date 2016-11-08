=begin
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    puts toy
  end
    
    def speak(number)
        number.times do puts "Woof!"
        end
    end
    
    def roll_over
        puts "*rolls over*"
    end
    
    def dog_years(human)
        p human * 15
    end
    
    def jump(number)
        jump = 1
        number.times do puts "Jump!"
            puts "Your dog has jumped #{jump} times!"
            jump += 1
        end
        
    end
    
    def initialize
        puts "Initializing new puppy instance..."
    end

end

instance = Puppy.new

instance.fetch("stick")

instance.speak(5)

instance.roll_over

instance.dog_years(5)

instance.jump(3)
=end

# Create a class - done
# Create two class methods and initialize methods - done
# Create loop which creates 50 instances
# - Create the instance
# - Create the loop
# Store all instances in data structure
# - Create a blank array
# - Add to the array
# Iterate using .each and apply class methods to each instance
# - Iterate through array
# - Use .each and apply methods to all stored instances

class Explore
    
    def travel(place)
        puts "You've traveled to #{place}!"
    end
    
    def discover(number)
        found = 1
        number.times do puts "You've discovered #{found} item!"
            found += 1
        end
    end
    
    def initialize
        puts "Starting Explore..."
    end
            
end

array = []

50.times do instance = Explore.new
    array.push(instance)   
end

#p array

array.each do |x| 
    x.travel("home")
    x.discover(3)
end
