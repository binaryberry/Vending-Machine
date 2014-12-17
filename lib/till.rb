require_relative 'coin'

class Till

	attr_accessor :one_pence, :two_pence, :five_pence, :ten_pence, :twenty_pence, :fifty_pence, :one_pound, :two_pounds, :coin_types, :total, :capacity

	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5 , 1, 2]
	NUMBER_OF_ACCEPTED_COINS = 8 

	def initialize(capacity=100)
		@capacity = capacity
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

	def accept!(coin) 
		for i in 0..(NUMBER_OF_ACCEPTED_COINS-1) do
			raise("#{@coin_types[i][0].value} pound(s) coin holder full") if @coin_types[i].count > capacity
			@coin_types[i] << coin if coin.value == ACCEPTED_COIN_VALUES[i]
		end
		@total += coin.value
	end

	def return!(coin)
		for i in 0..(NUMBER_OF_ACCEPTED_COINS-1) do
			if coin.value == ACCEPTED_COIN_VALUES[i]
				raise("#{ACCEPTED_COIN_VALUES[i]} pound(s) coin holder empty") if @coin_types[i].count == 0
				@coin_types[i].delete_at(0)
			end
		end
		@total -= coin.value
	end

	def go_to_coin_type(value)
		@coin_types[ACCEPTED_COIN_VALUES.index(value)]
	end



end