class Product

	attr_reader :price, :name

	def initialize(price, name)
		@price=price
		@name=name
	end

	def self.apple
		new(0.8, "apple")
	end

	def self.nuts
		new(1.5, "nuts")
	end

	def self.water
		new(2, "water")
	end

	def self.smoothie
		new(3, "smoothie")
	end

end