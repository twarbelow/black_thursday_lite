require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def test_it_exists
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_instance_of Merchant, merchant
  end

  def test_it_has_attrubutes
    merchant = Merchant.new({:id => 5, :name => "Turing School"})

    assert_equa l5, merchant.id
    assert_equal "Turing School", merchant.name
  end
end
