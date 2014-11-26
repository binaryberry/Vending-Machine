
module Holder

	attr_reader :capacity
	attr_accessor :items_count

	def initialize(capacity=100, items_count=100)
		@capacity = capacity
		@items_count = items_count
	end

	def release(number)
		raise "Holder empty, cannot release items" if number > @items_count
		@items_count -= number
	end

	def receive(number)
		raise "Holder full, cannot receive items" if number + @items_count > capacity
		@items_count += number
	end
end