class Coin

ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5 , 1, 2]

	attr_reader :value, :name

	def initialize(value, name)
		raise "Invalid coin" unless ACCEPTED_COIN_VALUES.include?(value) == true
		@value = value
		@name = name
	end


	def self.one_pence
		new(0.01, "1p")
	end

	def self.two_pence
		new(0.02, "2p")
	end

	def self.five_pence
		new(0.05, "5p")
	end

	def self.ten_pence
		new(0.10, "10p")
	end

	def self.twenty_pence
		new(0.20, "20p")
	end

	def self.fifty_pence
		new(0.50, "50p")
	end

	def self.one_pound
		new(1, "£1")
	end

	def self.two_pounds
		new(2, "£2")
	end
	

end