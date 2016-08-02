class OutOfBoundsException < StandardError;
end	

class FixedArray

    #Instantiate a new FixedArray with space for size elements.
	def initialize(size)
		@size = size
		@data = Array.new(size)
	end
	
	#Get a value from the array at the specified index. Throw an OutOFBoundsException if the user tries to get a 
	#value at an index outside the bounds of the fixed array.
	def get(index)
		raise OutOfBoundsException if index >= @size
		@data[index]
	end

	#Set a value in the array at a specific index and return the element. Throw an OutOFBoundsException if the user tries to set a value 
	#at an index outside the bounds of the fixed array.
	def set(index, element)
		raise OutOfBoundsException if index >=@size
		@data[index] = element
	end		

end
