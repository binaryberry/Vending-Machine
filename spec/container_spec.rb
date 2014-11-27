require 'container'


describe Container do
	
	let(:container) {Container.new}

	it 'knows how many products it has' do
	expect(container.products_count).to eq 100
	end

	it 'can release a product' do
	container.release(1)
	expect(container.products_count).to eq 99
	end

	it 'can receive a product load' do
	container.release(6)
	container.receive(1)
	expect(container.products_count).to eq 95
	end

	it 'has a capacity of 100 on initialisation' do
	expect(container.capacity).to eq 100	
	end

	it 'has 100 items on initialisation' do
	expect(container.products_count).to eq 100
	end

	it 'cannot have more items than its capacity' do
	expect { container.receive(1) }.to raise_error("Holder full, cannot receive items") 
	end

	it "cannot release items when it's empty" do
	container.release(100)
	expect { container.release(1) }.to raise_error("Holder empty, cannot release items") 
	end

end