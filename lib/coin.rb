class Coin

	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5 , 1, 2]

	attr_reader :value, :name

	def initialize(value)
		raise "Invalid coin" unless ACCEPTED_COIN_VALUES.include?(value)
		@value = value
	end

end