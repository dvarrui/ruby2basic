#!/usr/bin/env ruby
require_relative "../lib/ruby2basic"

source = <<-CODE
  puts "Hello, World!"
CODE

r2b = Ruby2Basic::ZXSpectrum.new
r2b.oneline = true
puts r2b.transpile(source)
