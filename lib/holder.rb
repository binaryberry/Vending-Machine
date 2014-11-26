
module Holder

	attr_reader :capacity
	attr_accessor :items_count

	def initialize(capacity=100, items_count=100)
		@capacity = capacity
		@items_count = items_count
	end

	def release(number)
		@items_count -= number
	end

	def receive(number)
		@items_count += number
	end
end