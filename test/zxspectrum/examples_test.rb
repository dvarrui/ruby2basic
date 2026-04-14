# frozen_string_literal: true

require "test_helper"

class ZXSpectrumExamplesTest < Test::Unit::TestCase
  def setup
    @r2b = Ruby2Basic::ZXSpectrum::Transpiler.new
  end

  test "example 1" do
    filein = File.join("examples", "01-hello.rb")
    fileout = File.join("examples", "01-hello.bas")
    input = File.read(filein)
    output = File.read(fileout)
    puts input
    puts output

    assert_equal(output, @r2b.call(input))
  end
end
