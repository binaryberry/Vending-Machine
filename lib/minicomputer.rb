require 'bigdecimal'

class Mini_Computer

	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2]
	NUMBER_OF_ACCEPTED_COINS = 8 

	attr_reader :container, :till, :current_budget, :coins_inserted
	attr_accessor :return_change

	def initialize(container_capacity=100, products_load=100, coin_load=20)
		@container=Container.new
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
		money_gap = product.price - @current_budget
		raise "To purchase this product please insert an extra £#{money_gap}." if money_gap > 0
		return_change(product)
		@container.release(1, product.name)
		@coins_inserted.each do |coin|
			till.accept!(coin)
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
				if amount_owed >= ACCEPTED_COIN_VALUES[i] && amount_owed > 0.01
					amount_owed = BigDecimal("#{amount_owed}") - BigDecimal("#{ACCEPTED_COIN_VALUES[i]}").to_f
					return_coin(ACCEPTED_COIN_VALUES[i])
				end
				i -= 1
			end
		end
	@return_change
	end

	def return_coin(value)
		coin_to_return = @till.go_to_coin_type(value)[0]
		@till.return!(coin_to_return)
		@return_change << coin_to_return
	end

end