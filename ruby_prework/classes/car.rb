class Car
	@@total_car_count = 0 #Class Variable.  
	#We generally only want to use a constant as a class variable.  Issues with
	#inheritance can occur using a class variable.
	@@cars_per_color = {}

	def self.total_car_count #Class method denoted by "self".  This means
		#the method belongs to the class rather than the instance.
		@@total_car_count
	end

	def self.cars_per_color 	
		@@cars_per_color
	end

	def self.cars_per_color=(new_per_color)
		@@cars_per_color = new_per_color
	end

	def self.most_popular_color #most popular color for the car class 
		best_color = @@cars_per_color.max_by{|k,v| v}
		puts best_color[0]
	end

	def color
		@color 
	end

	def color=(new_color) #setter method for color of the class Car.  
		# This method will change the color for whatever instance of Car it is called on.  
		# In the setter method we need to add some code to update the class
		# variable @@cars_per_color.  This is why we need the setter method and
		# can't use attr_writer.
		# Here are the steps:
		# 1.  In the (color=) method, grab the original color of the car and save it to a variable.
		# 2.  Then look that color up in the @@cars_per_color instance variable and decrement it.
		# 3.  Then you can increment the color that was passed to the method similar 
		#     to what you did in the initialize method.
		@color = new_color
		original_color = color
		if original_color != new_color
			@@cars_per_color[color] -= 1
		end
		if @@cars_per_color[new_color].nil?
		 	@@cars_per_color[new_color] = 1
		else 
			@@cars_per_color[new_color] += 1
		end

		puts "The car color changed!"
	end

	def initialize(color= "tan")
		@fuel = 10
		@distance = 0
		@color = color
		@@total_car_count += 1
		if @@cars_per_color[color].nil?
		 	@@cars_per_color[color] = 1
		else 
			@@cars_per_color[color] += 1
		end

		# puts "The initialize method is running automatically."
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

		def fuel_up
			amt_gas = 10 - @fuel
			price_gas = amt_gas * 3.50
			puts "It will cost $#{price_gas} to fill up."
		end
	end
end

class ConvertibleCar < Car
# ConvertibleCar class will inherit all of the methods of 
# another class (Car in this example).  All methods created
# in the ConvertibleCar class will only apply to this class.

# This is known as the child class.

# A method of the same name in a child class will override 
# the same method in the parent class
	#roof_status keeps track of whether the top is up or down.  
# We need to run either the method top_down and close_top to find out the status.
# If the car is not a convertible, neither methods should do anything.

	attr_accessor :roof_status #since the roof_status variable changes we need to use attr_accessor

	def initialize(color= "tan", convertible = "true")
		super(color)
		@convertible = convertible #User can set this variable to either true or false
		# if the car is a convertible, it should have a @roof_status attribute.
		@roof_status = "closed" #We can initialize the roof_status with "closed".  When apply the top_down and close_top methods can change this variable.
	end

	def top_down
		@roof_status = "open"  #since we've already defined 
	end

	def close_top
		@roof_status = "closed"
	end

end


