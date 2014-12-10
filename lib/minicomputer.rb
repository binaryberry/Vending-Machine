require 'bigdecimal'

class Mini_Computer

	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2]
	NUMBER_OF_ACCEPTED_COINS = 8 

	attr_reader :container, :till, :current_budget, :coins_inserted
	attr_accessor :return_change

	def initialize(container_capacity=100, container_products_count=100, coin_load=20)
		@container=Container.new(container_capacity, container_products_count)
		@till=Till.new
		for i in 0..(NUMBER_OF_ACCEPTED_COINS-1) do
			coin_load.times do
			@till.coin_types[i] << Coin.new(ACCEPTED_COIN_VALUES[i])
			end
		end
		@current_budget = 0
		@coins_inserted =[]
	end

	def receive(coin)
		@current_budget += coin.value
		@coins_inserted << coin
	end

	def order_product(product)
		raise "please insert more coins" if product.price > @current_budget
		return_change(product)
		@container.products_count -= 1
		@coins_inserted.each do |coin|
			till.accept(coin)
		end
	end

	def return_change(product)
		@return_change = []
		amount_owed = @current_budget - product.price
		if ACCEPTED_COIN_VALUES.include?(amount_owed)
			return_coin(amount_owed)
		else
			i = NUMBER_OF_ACCEPTED_COINS-1
			while i >= 0 do
			p "i #{i} amount owed: #{amount_owed} accepted coin value:#{ACCEPTED_COIN_VALUES[i]}"
				if amount_owed >= ACCEPTED_COIN_VALUES[i] && amount_owed > 0.01
				p "amount owed: #{amount_owed}"
					amount_owed = BigDecimal("#{amount_owed}") - BigDecimal("#{ACCEPTED_COIN_VALUES[i]}").to_f
				p "updated amount owed is #{amount_owed}"
				p "THESE ARE ACCEPTED_COIN_VALUES#{ACCEPTED_COIN_VALUES[i]}"
					return_coin(ACCEPTED_COIN_VALUES[i])
					# @till.go_to_coin_type(ACCEPTED_COIN_VALUES[i])
				p "return change in if is #{@return_change}"
				elsif amount_owed == 0
				@return_change

				end
				i -= 1
			end
				p "return change after while loop is #{@return_change}"
		end
	@return_change
	end

	def return_coin(value)
		coin_to_return = @till.go_to_coin_type(value)[0]
		@till.return(coin_to_return)
		@return_change << coin_to_return
	end

end