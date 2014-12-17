
class Container

	attr_reader :capacity
	attr_accessor :products_load, :apples, :nuts, :water, :smoothies

	PRODUCT_NAMES = ["apple", "nuts", "water", "smoothie"]
	NUMBER_OF_TYPES_OF_PRODUCTS = 4

	def initialize(capacity=100, products_load = 100)
		@capacity = capacity
		@products_load = products_load
		quantity_of_each_product = products_load/NUMBER_OF_TYPES_OF_PRODUCTS
		@apples = Array.new(quantity_of_each_product) { |i| Product.apple }
		@nuts = Array.new(quantity_of_each_product) { |i| Product.nuts }
		@water = Array.new(quantity_of_each_product) { |i| Product.water }
		@smoothies = Array.new(quantity_of_each_product) { |i| Product.smoothie }
		@products = [@apples, @nuts, @water, @smoothies]
	end

	def release(number, name)
		number.times do
			for i in 0..(NUMBER_OF_TYPES_OF_PRODUCTS-1) do
				if name == PRODUCT_NAMES[i]
					raise("#{PRODUCT_NAMES[i]} not in stock, sorry") if @products[i].count == 0
					@products[i].delete_at(0)
				end
			end
		end
		@products_load -= number
	end

	def receive(number, name)
		number.times do
			for i in 0..(NUMBER_OF_TYPES_OF_PRODUCTS-1) do
				if name == PRODUCT_NAMES[i]
					raise("#{PRODUCT_NAMES[i]} holder full, sorry") if @products[i].count + 1 > @capacity/NUMBER_OF_TYPES_OF_PRODUCTS
					@products[i] << Product.name if name == PRODUCT_NAMES[i]
				end
			end
		end
		@products_load += number
	end

end