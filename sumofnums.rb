#!/usr/bin/env ruby

def sumofnums(*command)
  sum = 0
  command.each do |num|
    sum += num.to_i
  end
  sum
end

if ARGV.empty?
  puts "no inputs to add."
  exit 1
end

puts sumofnums(*ARGV)
