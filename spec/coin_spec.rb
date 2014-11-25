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

end