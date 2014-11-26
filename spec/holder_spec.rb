require 'holder'

class ContainerHolder; include Holder; end

describe Holder do
	let(:holder) {ContainerHolder.new(100)}

	it 'has a capacity on initialisation' do
	expect(holder.capacity).to eq 100	
	end

	# it 'can release a product' do
	# holder.release(1)
	# expect(holder.items_count).to eq 99
	# end

	# it 'can receive a product load' do
	# holder.receive(1)
	# expect(holder.items_count).to eq 101
	# end
	
	# it 'knows how many items it has' do
	# holder.receive(32)
	# expect(holder.items_count).to eq 32
	# end
end