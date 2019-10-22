require 'csv'
require_relative 'item'

class ItemCollection
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
  end

  # def all_items
  #   csv = CSV.read("#{@csv_file_path}", headers: true, header_converters: :symbol)
  #
  #   csv.map do |row|
  #      Item.new(row)
  #   end
  # end

  def find(id)
    all_items.find do |item|
      item.id == id
    end
  end

  def where(attribute)
    attribute_name = attribute.keys.first
    attribute_value = attribute.values.last

    all_items.find_all do |item|
      item.send(attribute_name) == attribute_value
    end
  end
end









# def create_items_from_csv(csv_file_path)
#   csv = CSV.read("#{csv_file_path}", headers: true, header_converters: :symbol)
#
#   csv.map do |row|
#      Item.new(row)
#   end
# end
