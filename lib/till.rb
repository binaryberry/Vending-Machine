require_relative 'holder'
require_relative 'coin'

class Till

	include Holder

	attr_reader :total
	attr_accessor :one_pound

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

	def receive(coin)
		@total += coin.value
		@coin_types.each do |coin_type|
			coin_type << coin if coin.value
		end
	end

	# def release(coin_value)
	# 	@total -= coin_value
	# end

end