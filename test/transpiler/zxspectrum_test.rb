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

  test "LET" do
    input = 'name="Obiwan"'
    output = '10 LET name$ = "Obiwan"'
    assert_equal(output, @r2b.transpile(input))

    input = 'age=55'
    output = '10 LET age = 55'
    assert_equal(output, @r2b.transpile(input))
  end

  test "PRINT" do
    input = 'puts "Hello World!"'
    output = '10 PRINT "Hello World!"'
    assert_equal(output, @r2b.transpile(input))

    input = 'puts "Hello, #{name}!"'
    output = '10 PRINT "Hello, " + STR$(name) + "!"'
    assert_equal(output, @r2b.transpile(input))
  end
end
