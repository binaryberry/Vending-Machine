require 'coin'


describe Coin do
	it "knows its value" do
		coin = Coin.new(0.01, "penny")
		expect(coin.value).to eq 0.01 
	end

	it "knows its name" do
		coin = Coin.new(0.01, "penny")
		expect(coin.name).to eq "penny"
	end

	it "can be 1p" do
		coin = Coin.one_pence
		expect(coin.value).to eq 0.01
		expect(coin.name).to eq "1p"
	end

	it "can be 2p" do
		coin = Coin.two_pence
		expect(coin.value).to eq 0.02
		expect(coin.name).to eq "2p"
	end

	it "can be 5p" do
		coin = Coin.five_pence
		expect(coin.value).to eq 0.05
		expect(coin.name).to eq "5p"
	end

	it "can be 10p" do
		coin = Coin.ten_pence
		expect(coin.value).to eq 0.1
		expect(coin.name).to eq "10p"
	end

	it "can be 20p" do
		coin = Coin.twenty_pence
		expect(coin.value).to eq 0.20
		expect(coin.name).to eq "20p"
	end

	it "can be 50p" do
		coin = Coin.fifty_pence
		expect(coin.value).to eq 0.50
		expect(coin.name).to eq "50p"
	end

	it "can be £1" do
		coin = Coin.one_pound
		expect(coin.value).to eq 1
		expect(coin.name).to eq "£1"
	end

	it "can be £2" do
		coin = Coin.two_pounds
		expect(coin.value).to eq 2
		expect(coin.name).to eq "£2"
	end


	# it "cannot be a value other than 1p, 2p, 5p, 10p, 20p, 50p, £1, £2" do
	# end
end
