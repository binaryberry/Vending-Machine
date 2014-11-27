
class Container

	attr_reader :capacity
	attr_accessor :products_count

	def initialize(capacity=100, products_count=100)
		@capacity = capacity
		@products_count = products_count
	end

	def release(number)
		raise "Holder empty, cannot release items" if number > @products_count
		@products_count -= number
	end

	def receive(number)
		raise "Holder full, cannot receive items" if number + @products_count > @capacity
		@products_count += number
	end

end