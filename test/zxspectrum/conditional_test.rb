# frozen_string_literal: true

require "test_helper"

class ZXSpectrumConditionalTest < Test::Unit::TestCase
  def setup
    @r2b = Ruby2Basic::ZXSpectrum::Transpiler.new
    @r2b.oneline = true
  end

  test "if-then online" do
    #omit "TODO"

    #input = 'puts "Ok" if a > 0'
    #output = '10 IF a > 0 THEN PRINT "Ok"'

    #assert_equal(output, @r2b.call(input))
  end
end
