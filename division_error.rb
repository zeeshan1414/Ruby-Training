# Create a custom DivisionError ruby class and 
# raise the exception for this class while dividing a number with 0

class DivisionError < StandardError
	# attr_reader :msg

	def initialize(msg="default error message")
		# @msg = msg
		super(msg)
	end
end

def divide(a, b)
	begin
		raise DivisionError.new("Exception due to division by zero") if b == 0
	rescue DivisionError => e
		# puts e.msg
		puts e.message
	else
		puts "No Errors and result is #{a.to_f/b}"
	end
end

divide(1, 0)
divide(6, 2)
