require 'holder'

class ContainerHolder; include Holder; end

describe Holder do
	let(:holder) {ContainerHolder.new}

	it 'has a capacity of 100 on initialisation' do
	expect(holder.capacity).to eq 100	
	end

	it 'has 100 items on initialisation' do
	expect(holder.items_count).to eq 100
	end

	it 'can release an item' do
	holder.release(1)
	expect(holder.items_count).to eq 99
	end

	it 'can receive an item' do
	holder.receive(1)
	expect(holder.items_count).to eq 101
	end
	
	# it 'knows how many items it has' do
	# holder.receive(32)
	# expect(holder.items_count).to eq 32
	# end
end