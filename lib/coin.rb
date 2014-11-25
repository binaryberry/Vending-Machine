class Coin

	attr_reader :value, :name

	def initialize(value, name)
		@value = value
		@name = "#{name}"
	end

end