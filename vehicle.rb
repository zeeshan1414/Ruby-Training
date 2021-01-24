class Vehicle
	def moves
	end
end

class Bike < Vehicle
	attr_writer :tyres, :seats

	def initialize(tyres, seats)
		@tyres = tyres
		@seats = seats
	end

	def moves
		puts "Car moves"
	end

end

class Car < Vehicle
	attr_writer :tyres, :seats

	def initialize(tyres, seats)
		@tyres = tyres
		@seats = seats
	end

	def moves
		puts "Car moves"
	end

end