class Container

	attr_accessor :products_count

	def initialize
		@products_count = 100
	end

	def release(number)
		@products_count -= number
	end

end