require 'container'


describe Container do
	
	it 'knows how many products it has' do
	container = Container.new
	expect(container.products).to eq 100
	end


end