require 'product'


describe Product do
	it "knows its price" do
		product = Product.new(2, "water")
		expect(product.price).to eq 2 
	end

	it "knows its name" do
		product = Product.new(2, "water")
		expect(product.name).to eq "water" 
	end
end