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

class ArrayList

	#Instantiate a new dynamic array with initial size size.
	def initialize(size)
		@size = size
		@data = Array.new(size)
	end	

	#Add element to the end of the list. Return the element added.
	def add(element)
		@size += 1
		@data.push(element)
		element
	end	

	#Retrieve an element at index. If no element exists at that index, throw an OutOfBoundsException
	def get(index)
		raise OutOfBoundsException if index >= @size
		@data[index]
	end

	#Replace an existing element at index. Return the element. If no element exists at that index, 
	#throw an OutOfBoundsException

	def set(index, element)
		raise OutOfBoundsException if index >= @size
		@data[index] = element
	end
	
	#Return the number of items in the list
	def length
		@data.length
	end
	
	def insert(index, element)
		raise OutOfBoundsException if index >= @size
		@data.insert(index, element)
	end	

end			