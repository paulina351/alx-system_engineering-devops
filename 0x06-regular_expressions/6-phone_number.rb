#!/usr/bin/env ruby
# Finding regular expression
puts ARGV[0].scan(/^\d{10,10}$/).join
