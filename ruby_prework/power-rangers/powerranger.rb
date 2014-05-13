class Person

	def initialize(name, caffeine_level = 30)
		@name = name
		@caffeine_level = caffeine_level
	end

	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end

	def caffeine_level
		@caffeine_level = caffeine_level
	end

	def caffeine_level=(new_caffeine_level)
		@caffeine_level = new_caffeine_level
	end

	def run
		if @caffeine_level < 50
			puts "I can't run very far, my caffeine level is #{@caffeine_level} I need some coffee."
		else
			puts "I've never run this fast!"
		end
	end

	def scream
		puts "Save me PowerRangers!!!"
	end

	def drink_coffee
		puts "My caffeine_level is #{@caffeine_level}."
		if @caffeine_level == 0
			@caffeine_level += 50
		elsif @caffeine_level <= 50
			@caffeine_level += 75
		elsif @caffeine_level >= 150
		else
			puts "A little more caffeine will make me invincible!"
			@caffeine_level += 25
		end
		puts "My caffeine_level is now #{@caffeine_level}."
	end

end

class PowerRanger < Person
	attr_accessor :strength
	attr_accessor :status_color
	attr_accessor :original_color

	def initialize(name, caffeine_level = 100, strength = 0, color = "pink")
		super(name, caffeine_level)
		@strength = strength
		@original_color = color
		@status_color = color
	end

	def punch(citizen = nil)
		if citizen.nil?
			puts "Hey, you didn't pass in a person."
			return nil #Quits method if true.  If we didn't put this here, the method would continue if the statement was true.
		end
		puts citizen.scream
		puts citizen.run
		@caffeine_level -= 5 
		if strength > 5
			puts "#{citizen.name} was somersaulted into the air.  Oh my!"
		end
	end

	def use_megazord(citizen = nil)
		@strength = 5000
		puts citizen.scream
		puts citizen.run
		@strength -= 4000
		@status_color = "blinking red" 
		puts "My strength is now #{@strength} and I'm #{@status_color}.  I need to power up!"		
	end

	def rest 
		puts "I need some caffeine and time to regain my strength."
		while @caffeine_level < 100
			drink_coffee
		end
		@original_color = original_color  
		puts "I needed a break and I'm back to my #{@original_color} color.  Let's rumble."
	end
end

class EvilNinja < Person

	attr_reader :strength, :evilness

	def initialize(name, caffeine_level = 100, strength, evilness)
		super(name, caffeine_level)
		@strength = strength
		@evilness = evilness
	end
	
	def punch(citizen = nil)
		if citizen.nil?
			puts "Hey, you didn't pass in a person."
			return nil 
		end
		puts citizen.scream
		puts citizen.run
		@caffeine_level -= 5 
		if strength > 5
			puts "#{citizen.name} was somersaulted into the air.  Oh my!"
		end
	end

	def cause_mayhem(citizen = nil)
		if citizen.nil?
			puts "Hey, you didn't pass in a person."
			return nil 
		end
		puts "#{@name} causes mayhem."
		citizen.caffeine_level = 0  
		puts "#{citizen.name}'s caffeine level is now zero.  Terrifying!"
	end
end

#Create 2 Persons, 2 PowerRangers, 2 EvilNinjas, keep these outside of the method.
#If these objects were called within the method, then every time the 
#method runs it would change the constant and would result in a dynamic 
#constant assignment
A = Person.new("A", 65)
C = Person.new("C", 100)
Emma = PowerRanger.new("Emma", 30,5, "black")
Andy = PowerRanger.new("Andy", 300, 100, "green")
Angry_Bird = EvilNinja.new("Angry_Bird", 10, 30, 300)
Courtney_Love = EvilNinja.new("Courtney Love", 20, 1, 1000)

def fight_scene
	puts "#{A.name}: Oh no, it's EvilNinja #{Courtney_Love.name}!!"
	A.run
	print "#{C.name}: "
	C.scream
	Courtney_Love.cause_mayhem
	puts "#{Courtney_Love.name}: WAH HAH HAH!  You thought I was the worst of your problems."
	puts "#{Angry_Bird.name} enters the scene."
	Angry_Bird.punch(Courtney_Love)
	puts "#{Angry_Bird.name}: Get outta ma way!"
	puts "#{Emma.name} & #{Andy.name} enter the scene... finally"
	Emma.punch(Angry_Bird)
	Andy.use_megazord(Courtney_Love)
	Andy.rest
	Emma.use_megazord(Angry_Bird)
	Courtney_Love.run
	puts "#{Angry_Bird.name}: #{Courtney_Love.name} may run but this won't be the last of me!"
	puts "#{Emma.name}: Another day, another EvilNinja.  #{Andy.name}, let's get some Five Guys."
	puts "#{Andy.name}: As long as they have a veggie burger."
end

fight_scene

Fred = Person.new("Fred")
p Fred
Fred.scream
Fred.run
Fred.drink_coffee
Fred.run
Fred.drink_coffee


Agnes = PowerRanger.new("Agnes",20,10, "red")
Agnes.punch(Fred)
Agnes.punch()
Agnes.use_megazord(Fred)
Agnes.rest

Rita_Repulsa = EvilNinja.new("Rita Repulsa", 100, 2000, 50)
Rita_Repulsa.punch(Fred)
Rita_Repulsa.cause_mayhem(Fred)




