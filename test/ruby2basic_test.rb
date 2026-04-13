# frozen_string_literal: true

require "test_helper"

class Ruby2basicTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Ruby2basic.const_defined?(:VERSION)
    end
  end

  test "something useful" do
    assert_equal("expected", "actual")
  end
end
