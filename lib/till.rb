require_relative 'holder'
require_relative 'coin'

class Till

	include Holder

	attr_reader :total

	def initialize
		@total = 0
		@one_pence = 0
		@two_pence = 0
		@five_pence = 0
		@ten_pence = 0
		@twenty_pence = 0
		@fifty_pence = 0
		@one_pound = 0
		@two_pounds = 0
		@coin_types = [ @one_pence, @two_pence, @five_pence, @ten_pence, @twenty_pence, @fifty_pence, @one_pound,@two_pounds]
	end

	def receive(coin)
		@total += coin.value
		@coin_types.each do |coin_type|
			coin_type +=1 if coin_type.to_s == coin.name
		end
	end

	# def release(coin_value)
	# 	@total -= coin_value
	# end

end