class Person

	def initialize(name, caffeine_level = 0)
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
			puts "You got it dude!"
		end
	end

	def scream
		puts "Save me PowerRangers!!!"
	end

	def drink_coffee
		if @caffeine_level == 0
			@caffeine_level += 50
		elsif @caffeine_level <= 50
			@caffeine_level += 75
		elsif @caffeine_level >= 150
			puts "No more coffee for you!"
		else
			puts "Are you sure you want another cup?"
			@caffeine_level += 25
		end
	end

end

class PowerRanger
end

class EvilNinja
end

Fred = Person.new("Fred")
Fred.scream
Fred.run
Fred.drink_coffee
Fred.run
Fred.drink_coffee


