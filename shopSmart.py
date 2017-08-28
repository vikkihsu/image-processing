dir1 = {'apples': 2.0, 'oranges': 1.0}
dir2 = {'apples': 1.0, 'oranges': 5.0}
Fruitshop = {'shop1' : dir1, 'shop2' : dir2}
shop1 = Fruitshop('shop1')
shop2 = Fruitshop('shop2')
shops = [shop1, shop2]
orders1 = [('apples', 1.0), ('oranges', 3.0)]
orders2 = [('apples', 3.0)]
shopSmart = {
	orders1: shops,
	orders2: shops
}

