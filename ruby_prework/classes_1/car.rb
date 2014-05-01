class Car
	def initialize()
		@fuel = 10
		@distance = 0
		puts "The initialize method is running automatically."
	end

	def get_info
		return "I'm a car!  I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end

	def drive(number_miles)
	    fuel_rate = 1.0/20.0
		if  200 >= (number_miles + @distance) 
			@distance = number_miles + @distance
			@fuel = @fuel - (number_miles * fuel_rate)
		else	
			@fuel = @fuel - (number_miles * fuel_rate)
			@fuel = 0
			@distance = 200
			puts "I'm out of gas.  Please fuel up."
		end
	end

		def fuel_up
			amt_gas = 10 - @fuel
			price_gas = amt_gas * 3.50
			puts "It will cost $#{price_gas} to fill up."
		end
	end

end


