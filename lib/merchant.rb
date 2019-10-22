require 'Time'

class Merchant
  attr_reader :id, :name, :engine, :created_at

  def initialize(merchant_info)
    @id = merchant_info[:id].to_i
    @name = merchant_info[:name]
    @created_at = Time.parse(merchant_info[:created_at])
  end
end
