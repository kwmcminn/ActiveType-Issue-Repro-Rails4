require 'test_helper'

class CatCreatorTest < ActiveSupport::TestCase

  test "when a kitten fails to save, does not create a cat and returns an error" do
    assert_no_difference "Cat.count" do
      creator.save
    end
  end

  private

  def creator
    CatCreator.new
  end
end
