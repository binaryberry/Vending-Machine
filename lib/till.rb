require_relative 'holder'
require_relative 'coin'

class Till

	include Holder

	attr_reader :total
	attr_accessor :one_pence, :two_pence, :five_pence, :ten_pence, :twenty_pence, :fifty_pence, :one_pound, :two_pounds

	ACCEPTED_COIN_NAMES = ["one_pence", "two_pence", "five_pence", "ten_pence", "twenty_pence", "fifty_pence", "one_pound", "two_pounds"]
	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5 , 1, 2]
	NUMBER_OF_ACCEPTED_COINS = 7 

	def initialize
		@total = 0
		@one_pence = []
		@two_pence = []
		@five_pence = []
		@ten_pence = []
		@twenty_pence = []
		@fifty_pence = []
		@one_pound = []
		@two_pounds = []
		@coin_types = [@one_pence, @two_pence, @five_pence, @ten_pence, @twenty_pence, @fifty_pence, @one_pound,@two_pounds]
	end

	def accept(coin)
		@total += coin.value
		@coin_types.each do |coin_type| 
			for i in 0..NUMBER_OF_ACCEPTED_COINS do
				coin_type << coin if coin.value == ACCEPTED_COIN_VALUES[i]
			end
		end
	end

	# def release(coin_value)
	# 	@total -= coin_value
	# end

end