require 'minitest/autorun'

# Write your code here
class Product
  attr_accessor :name, :price
  def initialize (name, price)
    @name = name
    @price = price
  end

  def self.add(price)
    @price = price
  end
end

class Order
  def order
    @order
  end
end

class OrderTest < MiniTest::Unit::TestCase
  def test_total_price
    Product.add(name: "Muffin", price: 2.99)
    Product.add(name: "Coffee", price: 3.75)
    Product.add(name: "Smoothie", price: 3.99)

    order = Order.new(tax_rate: 0.05)

    order.add 2, "Muffin"
    order.add 1, "Coffee"
    order.add 1, "Smoothie"

    assert_equal 14.41, order.total_price
  end
end