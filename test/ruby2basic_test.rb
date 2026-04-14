# frozen_string_literal: true

require "test_helper"

class Ruby2BasicTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Ruby2Basic.const_defined?(:VERSION)
    end
  end
end
