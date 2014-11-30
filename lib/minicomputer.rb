class Mini_Computer

	ACCEPTED_COIN_VALUES = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2]
	NUMBER_OF_ACCEPTED_COINS = 7 

	attr_reader :container, :till, :current_budget, :coins_inserted
	attr_accessor :return_change

	def initialize(container_capacity=100, container_products_count=100, coin_load=20)
		@container=Container.new(container_capacity, container_products_count)
		@till=Till.new
		for i in 0..NUMBER_OF_ACCEPTED_COINS do
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
		end
	@return_change
	end

	def return_coin(value)
		coin_to_return = @till.go_to_coin_type(0.5)[0]
		@return_change << coin_to_return
		@till.return(coin_to_return)
	end

end