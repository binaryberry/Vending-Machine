require 'product'


describe Product do
	it "knows its price" do
		product = Product.new(2)
		expect(product.price).to eq 2 
	end
end