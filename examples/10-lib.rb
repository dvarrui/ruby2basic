#!/usr/bin/env ruby
require_relative "../lib/ruby2basic"

source = <<-CODE
  puts "Hello, World!"
CODE

r2b = Ruby2Basic::ZXSpectrum::Transpiler.new
puts r2b.call(source)
