class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(item_info)
    @description = item_info[:description]
    @id = item_info[:id].to_i
    @name = item_info[:name]
    @unit_price = item_info[:unit_price].to_i
    @merchant_id = item_info[:merchant_id].to_i
  end
end
