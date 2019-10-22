require './lib/sales_engine'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
# merchant_collection = sales_engine.merchants
item_collection = sales_engine.items
require "pry"; binding.pry
#
# items = item_collection.all_items
#
# first_merchant = merchant_collection.all_merchants.first
# first_item = item_collection.all_items.first
#
#
# specific_merchant = merchant_collection.find(12334132)
# #call out data type
#
all_pencils = item_collection.where({name: 'Glitter scrabble frames'})

#talk about level of understanding we're expecting
#opportunities for modules/inheritance
#rules for a reason, knowing when/why we can break them
#merchant vs. item setup (rationale-- look at item)
#refactor merchant collection `all_merchants` to be a self method
