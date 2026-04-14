# frozen_string_literal: true

require "test_helper"

class TranspilerZXSpectrumTest < Test::Unit::TestCase
  def setup
    @r2b = Ruby2Basic::ZXSpectrum.new
    @r2b.oneline = true
  end

  test "REM" do
    input = "# Comentario"
    output = "10 REM Comentario"

    assert_equal(output, @r2b.transpile(input))
  end

  test "PRINT" do
    input = 'puts "Hello World!"'
    output = '10 PRINT "Hello World!"'

    assert_equal(output, @r2b.transpile(input))
  end
end
