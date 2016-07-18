require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
def setup
@inventory1 = inventories(:one)
@inventory2 = inventories(:two)
end
test "serial number cannot be repeated" do
	@inventory1.serial = 2
	@inventory2.serial = 1
assert_not @inventory1.valid?
end
end
