# frozen_string_literal: true

require "test_helper"

class ZXSpectrumExamplesTest < Test::Unit::TestCase
  def setup
    @r2b = Ruby2Basic::ZXSpectrum::Transpiler.new
  end

  test "examples" do
    rbfiles = Dir.glob("examples/*.rb")
    rbfiles.each do |rbfile|
      basfile = rbfile[0..-4] + ".bas"
      next unless File.exist?(basfile)

      input = File.read(rbfile)
      output = File.read(basfile)  
      assert_equal(output, @r2b.call(input))
      end
  end
end
