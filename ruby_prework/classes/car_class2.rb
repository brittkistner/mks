class Car
	@@total_car_count = 0 #class variable

	def self.total_car_count #method for the class which belongs to the class not the instance of the class
		@@total_car_count
	end

	c = Car.new
	c.total_car_count
end

