require 'till'
require 'coin'

describe Till do 

	let(:till) {Till.new}
	let(:coin) {Coin.one_pound}


	it 'can receive a coin' do
		till.accept(coin)
		expect(till.total).to eq 1
		expect(till.one_pound.count).to eq 1
	end

	it "can receive three coins" do
		small_coin = Coin.two_pence
		small_coin2 = Coin.two_pence
		till.accept(coin)
		till.accept(small_coin)
		till.accept(small_coin2)
		expect(till.total).to eq 1.04
		expect(till.one_pound.count).to eq 1
		expect(till.two_pence.count).to eq 2
		expect(till.one_pence.count).to eq 0
	end

	# it 'can release a coin' do
	# 	till = Till.new
	# 	till.receive(0.01)
	# 	till.release(0.01)
	# 	expect(till.total).to eq 0
	# end
	
end