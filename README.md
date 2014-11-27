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
		- knows how many products it holds
		- releases product
		- receives products
###### Till
		- knows how many coins of each kind it holds

###### MiniComputer
		- loads the vending machine with products and coins on initialization
		- calculates amount inserted
		- calculates change that needs to be returned
		- knows how many coins to return
		- decides to release product
		- returns change if necessary
		- updates container and till inventory


