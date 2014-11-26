require_relative 'holder'

class Container

	include Holder

	attr_accessor :products_count

	def initialize
		@products_count = 100
	end

	def release(number)
		@products_count -= number
	end

	def receive(number)
		@products_count += number
	end

end