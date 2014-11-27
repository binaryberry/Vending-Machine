require 'coin'


describe Coin do
			ACCEPTED_COIN_NAMES = ["one_pence", "two_pence", "five_pence", "ten_pence", "twenty_pence", "fifty_pence", "one_pound", "two_pounds"]
	it "knows its value" do
		coin = Coin.new(0.01)
		expect(coin.value).to eq 0.01 
	end

	it "can be 1p" do
		coin = Coin.new(0.01)
		expect(coin.value).to eq 0.01
	end

	it "can be 2p" do
		coin = Coin.new(0.02)
		expect(coin.value).to eq 0.02
	end

	it "can be 5p" do
		coin = Coin.new(0.05)
		expect(coin.value).to eq 0.05
	end

	it "can be 10p" do
		coin = Coin.new(0.10)
		expect(coin.value).to eq 0.1
	end

	it "can be 20p" do
		coin = Coin.new(0.20)
		expect(coin.value).to eq 0.20
	end

	it "can be 50p" do
		coin = Coin.new(0.50)
		expect(coin.value).to eq 0.50
	end

	it "can be £1" do
		coin = Coin.new(1)
		expect(coin.value).to eq 1
	end

	it "can be £2" do
		coin = Coin.new(2)
		expect(coin.value).to eq 2
	end


	it "cannot be a value other than 1p, 2p, 5p, 10p, 20p, 50p, £1, £2" do
		expect{ Coin.new(0.03) }.to raise_error("Invalid coin")
	end
end
