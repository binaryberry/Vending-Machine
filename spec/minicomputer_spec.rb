require 'minicomputer'

describe Mini_Computer do
	
	let(:wall_e) {Mini_Computer.new}

	context "initialisation" do
		it 'loads the vending machine with 100 products on initialisation' do
		expect(wall_e.container.products_count).to eq 100
		end

		it "loads the till with 20 coins of each type on initialisation" do
		expect(wall_e.till.fifty_pence.count).to eq 20
		expect(wall_e.till.two_pounds.count).to eq 20
		expect(wall_e.till.fifty_pence[0]).to be_a(Coin)
		end
	end

	context "purchase" do

		it "knows the total amount the client has inserted" do 
		wall_e.receive(Coin.new(1))
		wall_e.receive(Coin.new(0.5))
		expect(wall_e.current_budget).to eq 1.5
		end

		it "allows the client to purchase a product" do
		water = Product.new(2, "water")
		wall_e.receive(Coin.new(2))
		wall_e.order_product(water)
		expect(wall_e.container.products_count).to eq 99
		end

		it "displays an error message if budget is too low to buy product" do
		water = Product.new(2, "water")
		wall_e.receive(Coin.new(1))
		expect{ wall_e.order_product(water) }.to raise_error("please insert more coins")
		end
	end
	
	context "cashing in" do
		it "adds the coins the clients has inserted to the till" do
			water = Product.new(2, "water")
			wall_e.receive(Coin.new(1))
			wall_e.receive(Coin.new(1))
			wall_e.order_product(water)
		expect(wall_e.till.one_pound.count).to eq 22
		end

	end

end