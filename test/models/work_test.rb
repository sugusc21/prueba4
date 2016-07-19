require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
def setup
@work = works(:one)
end

test "work must have a user" do
	@work.name = nil
assert_not @work.valid?
end
end
