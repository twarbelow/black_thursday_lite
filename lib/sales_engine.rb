require './lib/item_collection'
require './lib/merchant_collection'

class SalesEngine
  def self.from_csv(file_paths)
    item_path = file_paths[:items]
    merchant_path = file_paths[:merchants]

    SalesEngine.new(item_path, merchant_path)
  end

  def initialize(item_path, merchant_path)
    @item_path = item_path
    @merchant_path = merchant_path
  end

  def items
    ItemCollection.new(@item_path)
  end

  def merchants
    MerchantCollection.new(@merchant_path)
  end
end
