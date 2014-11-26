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
	holder.release(1)
	holder.receive(1)
	expect(holder.items_count).to eq 100
	end
	
	it 'knows how many items it has' do
	holder.release(60)
	holder.receive(30)
	expect(holder.items_count).to eq 70
	expect { raise "oops" }.to raise_error("oops")
	end

	it 'cannot have more items than its capacity' do
	expect { holder.receive(1) }.to raise_error("Holder full, cannot receive items") 
	end

end