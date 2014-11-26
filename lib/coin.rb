class Coin

ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5 , 1, 2]

	attr_reader :value, :name

	def initialize(value, name)
		raise "Invalid coin" unless ACCEPTED_COIN_VALUES.include?(value) == true
		@value = value
		@name = name
	end


	def self.one_pence
		new(0.01, "one_pence")
	end

	def self.two_pence
		new(0.02, "two_pence")
	end

	def self.five_pence
		new(0.05, "five_pence")
	end

	def self.ten_pence
		new(0.10, "ten_pence")
	end

	def self.twenty_pence
		new(0.20, "twenty_pence")
	end

	def self.fifty_pence
		new(0.50, "fifty_pence")
	end

	def self.one_pound
		new(1, "one_pound")
	end

	def self.two_pounds
		new(2, "two_pounds")
	end
	

end