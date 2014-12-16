Vending Machine
--------------------------------------------------

##The brief

Design a vending machine in code. The vending machine, once a product is selected and the appropriate amount of money is inserted, should return that product. It should also return change if too much money is provided or ask for more money if there is not enough. The machine should take an initial load of products and change with denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2. There should also be a way of reloading both products and change at a later point. The machine needs to keep track of the products and money that it contains.

##CRC

###### Product
		- knows its price
		- knows its name
###### Coin
		- knows its value
###### Container
		- knows how many products of each kind it holds
		- is initialised with an equal amount of each type of product
		- releases product
		- receives products
###### Till
		- knows how many coins of each kind it holds
		- accepts coins
		- releases coins

###### MiniComputer
		- loads the vending machine with products and coins on initialization - by default it can hold 100 products, and starts full
		- calculates amount inserted
		- decides to release product
		- asks for more money if money inserted not enough
		- calculates change that needs to be returned and knows how many coins to return
		- updates container inventory, till inventory and current budget


