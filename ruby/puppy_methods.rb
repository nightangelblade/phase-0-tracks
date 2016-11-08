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











