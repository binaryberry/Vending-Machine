require 'container'


describe Container do
	
	let(:container) {Container.new}

	context "on initialisation" do
		it 'has a capacity of 100' do
		expect(container.capacity).to eq 100	
		end

		it 'has 100 items' do
		expect(container.products_load).to eq 100
		end

		it 'has an equal quantity of apples, nuts, water and smoothies' do
		expect(container.apples.count).to eq 25
		expect(container.apples[0]).to be_a(Product)
		expect(container.nuts.count).to eq 25
		expect(container.nuts[0]).to be_a(Product)
		expect(container.water.count).to eq 25
		expect(container.water[0]).to be_a(Product)
		expect(container.smoothies.count).to eq 25
		expect(container.smoothies[0]).to be_a(Product)
		end

		it 'has an equal quantity of each type of product, even when product load not default' do
		small_container = Container.new(40, 40)
		expect(small_container.apples.count).to eq 10
		expect(small_container.apples[0]).to be_a(Product)
		expect(small_container.nuts.count).to eq 10
		expect(small_container.nuts[0]).to be_a(Product)
		expect(small_container.water.count).to eq 10
		expect(small_container.water[0]).to be_a(Product)
		expect(small_container.smoothies.count).to eq 10
		expect(small_container.smoothies[0]).to be_a(Product)
		end
	end

	context 'basic functionality' do
		it 'knows how many products it has' do
		expect(container.products_load).to eq 100
		end

		it 'can release a product' do
		container.release(1)
		expect(container.products_load).to eq 99
		end

		it 'can receive a product' do
		container.release(6)
		container.receive(1)
		expect(container.products_load).to eq 95
		end
	end

	context 'error messages' do

		it 'cannot have more items than its capacity' do
		expect { container.receive(1) }.to raise_error("Holder full, cannot receive items") 
		end

		it "cannot release items when it's empty" do
		container.release(100)
		expect { container.release(1) }.to raise_error("Holder empty, cannot release items") 
		end
	end

end