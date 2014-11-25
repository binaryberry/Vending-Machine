require 'till'


describe Till do 

	it 'can receive a coin' do
		till = Till.new
		till.receive(0.01)
		expect(till.total).to eq 0.01
	end

	it 'can release a coin' do
		till = Till.new
		till.receive(0.01)
		till.release(0.01)
		expect(till.total).to eq 0
	end
	
end