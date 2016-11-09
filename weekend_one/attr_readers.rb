class Car

	# Our car will have 2 properties: 
	# - color
	# - make
	attr_reader :color, :mileage

	def initialize(color, make)
		@color = color
		@make = make
		@mileage = calculate_mileage(50, 50)
	end


	def calculate_mileage(number1, number2)
		"Mileage blah" + @color
	end

	# # attr_reader creates this method
	# # this is the GETTER
	# def color
	# 	@color
	# end

	# attr_writer creates this method
	# this is the SETTER
	def color=(new_color)
		@color = new_color
	end	



end


car = Car.new("Black", "Toyota")
puts car.color
puts car.mileage

car.color = "Red"

puts "New color is: " + car.color

