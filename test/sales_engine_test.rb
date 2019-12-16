require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
  end

  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_has_attributes
    assert_equal "./data/items.csv", @sales_engine.item_path
    assert_equal "./data/merchants.csv", @sales_engine.merchant_path
  end

  def test_it_can_create_an_item_collection
    assert_instance_of ItemCollection, @sales_engine.item_collection
  end

  def test_it_can_create_a_merchant_collection
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end
end
