require 'coin'


describe Coin do
	it "knows its value" do
		coin = Coin.new(0.01)
		expect(coin.value).to eq 0.01 
	end

end