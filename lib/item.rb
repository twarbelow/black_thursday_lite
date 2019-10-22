require 'Time'

class Item
  attr_reader :id, :name, :description, :unit_price, :created_at, :updated_at,
  :merchant_id

  def initialize(item_info)
    @description = item_info[:description]
    @id = item_info[:id].to_i
    @name = item_info[:name]
    @unit_price = item_info[:unit_price].to_f / 100
    @created_at = Time.parse(item_info[:created_at])
    @updated_at = Time.parse(item_info[:updated_at])
    @merchant_id = item_info[:merchant_id].to_i
  end

  def self.all
    csv = CSV.read("./data/items.csv", headers: true, header_converters: :symbol)

    csv.map do |row|
       Item.new(row)
    end
  end
end
