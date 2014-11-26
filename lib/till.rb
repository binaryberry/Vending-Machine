require_relative 'holder'

class Till

	include Holder

	attr_reader :total

	def initialize
		@total = 0
	end

	def receive(coin_value)
		@total += coin_value
	end

	def release(coin_value)
		@total -= coin_value
	end

end