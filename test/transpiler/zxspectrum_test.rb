# frozen_string_literal: true

require "test_helper"

class TranspilerZXSpectrumTest < Test::Unit::TestCase
  test "REM" do
  input = "# Comentario"
    output = "10 REM Comentario"
    r2b = Ruby2Basic::ZXSpectrum.new(input, oneline: true)

    assert_equal(output, r2b.transpile)
  end
end
