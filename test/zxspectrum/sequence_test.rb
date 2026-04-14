# frozen_string_literal: true

require "test_helper"

class ZXSpectrumSequenceTest < Test::Unit::TestCase
  def setup
    @r2b = Ruby2Basic::ZXSpectrum::Transpiler.new
    @r2b.oneline = true
  end

  test "REM" do
    input = "# Comentario"
    output = "10 REM Comentario"

    assert_equal(output, @r2b.call(input))
  end

  test "LET String" do
    input = 'name="Obiwan"'
    output = '10 LET name$ = "Obiwan"'
    assert_equal(output, @r2b.call(input))
  end

  test "LET Integer" do
    input = 'age=55'
    output = '10 LET age = 55'
    assert_equal(output, @r2b.call(input))
  end

  # test "DIM" do
  #   skip
  #   input = 'jedis = ["Yoda", "Obiwan", "Luke"]'
  #   output = '10 DIM jedis(3)'
  #   assert_equal(output, @r2b.transpile(input))
  # end

  test "PRINT" do
    input = 'puts "Hello World!"'
    output = '10 PRINT "Hello World!"'
    assert_equal(output, @r2b.call(input))

    input = 'puts "Age: #{age}."'
    output = '10 PRINT "Age: " + STR$(age) + "."'
    assert_equal(output, @r2b.call(input))

    input = 'puts "Hello, #{name}!"'
    output = '10 PRINT "Hello, " + STR$(name) + "!"'
    assert_equal(output, @r2b.call(input))
  end
end
