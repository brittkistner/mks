require_relative "car"

#Class 1
# car_a = Car.new()
# car_b = Car.new()
# puts car_a
# puts car_b
# car_a.drive(190)
# puts car_a
# puts car_b
# car_a.drive(11)
# car_b.drive(236)
# puts car_a
# puts car_b

#Class 2

#3
# puts Car.total_car_count
# c1 = Car.new
# puts Car.total_car_count
# c2 = Car.new
# puts Car.total_car_count

#4 - #9
car_a = Car.new("black")
p Car.total_car_count
p car_a.color
p Car.cars_per_color
car_b = Car.new("black")
p Car.total_car_count
p car_b.color
p Car.cars_per_color
car_a.color = "white"
p Car.total_car_count
p car_a.color
car_c = Car.new("black")
p Car.total_car_count
p Car.most_popular_color

car_c = ConvertibleCar.new("white", "false")
p car_c.color
p car_c.roof_status
p car_c.top_down
