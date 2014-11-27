require 'minicomputer'

describe Mini_Computer do
	
	it 'loads the vending machine with 100 products on initialisation' do
	wall_e=Mini_Computer.new
	expect(wall_e.container.products_count).to eq 100
	end



end