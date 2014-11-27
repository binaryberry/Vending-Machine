require_relative 'coin'

class Till

	attr_reader :total
	attr_accessor :one_pence, :two_pence, :five_pence, :ten_pence, :twenty_pence, :fifty_pence, :one_pound, :two_pounds

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
		for i in 0..NUMBER_OF_ACCEPTED_COINS do
			@coin_types[i] << coin if coin.value == ACCEPTED_COIN_VALUES[i]
		end
		
	end

	def return(coin)
		@total -= coin.value
	end

end