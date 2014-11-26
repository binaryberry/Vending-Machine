class Coin

ACCEPTED_COIN_VALUES = {0.01 => "one_pence", 0.02=> "two_pence", 0.05 => "five_pence", 0.1 => "ten_pence", 0.2 => "twenty_pence", 0.5 => "fifty_pence" , 1 => "one_pound", 2 => "two_pounds"}

	attr_reader :value, :name

	def initialize(value, name)
		raise "Invalid coin" unless ACCEPTED_COIN_VALUES.has_key?(value) == true
		@value = value
		@name = name
	end


	def self.one_pence
		new(0.01, ACCEPTED_COIN_VALUES[0.01])
	end

	def self.two_pence
		new(0.02, ACCEPTED_COIN_VALUES[0.02])
	end

	def self.five_pence
		new(0.05, ACCEPTED_COIN_VALUES[0.05])
	end

	def self.ten_pence
		new(0.10, ACCEPTED_COIN_VALUES[0.10])
	end

	def self.twenty_pence
		new(0.20, ACCEPTED_COIN_VALUES[0.20])
	end

	def self.fifty_pence
		new(0.50, ACCEPTED_COIN_VALUES[0.50])
	end

	def self.one_pound
		new(1,  ACCEPTED_COIN_VALUES[1])
	end

	def self.two_pounds
		new(2,  ACCEPTED_COIN_VALUES[2])
	end
	

end