class Coin

	ACCEPTED_COIN_NAMES = ["one_pence", "two_pence", "five_pence", "ten_pence", "twenty_pence", "fifty_pence", "one_pound", "two_pounds"]
	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5 , 1, 2]
	NUMBER_OF_ACCEPTED_COINS = 7 

	attr_reader :value, :name

	def initialize(value, name)
		@coins = {}
		for i in 0..NUMBER_OF_ACCEPTED_COINS do 
			@coins[ACCEPTED_COIN_VALUES[i]]=ACCEPTED_COIN_NAMES[i]
		end
		raise "Invalid coin" unless @coins.has_key?(value) == true
		@value = value
		@name = name
	end


	def self.one_pence
		new(0.01, ACCEPTED_COIN_NAMES[0])
	end

	def self.two_pence
		new(0.02, ACCEPTED_COIN_NAMES[1])
	end

	def self.five_pence
		new(0.05, ACCEPTED_COIN_NAMES[2])
	end

	def self.ten_pence
		new(0.10, ACCEPTED_COIN_NAMES[3])
	end

	def self.twenty_pence
		new(0.20, ACCEPTED_COIN_NAMES[4])
	end

	def self.fifty_pence
		new(0.50, ACCEPTED_COIN_NAMES[5])
	end

	def self.one_pound
		new(1,  ACCEPTED_COIN_NAMES[6])
	end

	def self.two_pounds
		new(2,  ACCEPTED_COIN_NAMES[7])
	end
	

end