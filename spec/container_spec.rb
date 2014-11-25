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
	container.receive(1)
	expect(container.products_count).to eq 101
	end


end