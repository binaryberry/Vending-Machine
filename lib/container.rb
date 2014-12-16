
class Container

	attr_reader :capacity
	attr_accessor :products_load, :apples, :nuts, :water, :smoothies

	def initialize(capacity=100, products_load = 100)
		@capacity = capacity
		@products_load = products_load
		quantity_of_each_product = products_load/4
		@apples = Array.new(quantity_of_each_product) { |i| Product.new(0.8, "apple") }
		@nuts = Array.new(quantity_of_each_product) { |i| Product.new(1.5, "nut") }
		@water = Array.new(quantity_of_each_product) { |i| Product.new(2, "water") }
		@smoothies = Array.new(quantity_of_each_product) { |i| Product.new(3, "smoothie") }
	end

	def release(number)
		raise "Holder empty, cannot release items" if number > @products_load
		@products_load -= number
	end

	def receive(number)
		raise "Holder full, cannot receive items" if number + @products_load > @capacity
		@products_load += number
	end

end