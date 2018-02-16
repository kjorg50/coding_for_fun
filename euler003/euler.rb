#!/bin/ruby

# 08 Feb 2018, Kyle Jorgensen
# Coding for fun
# https://www.hackerrank.com/contests/projecteuler/challenges/euler003

require 'prime'

# finds the larges prime factor for input 'num'
def largest_prime_factor(num)
  puts "num = #{num}"
  Prime.first(num).select {|i| i}
end

if __FILE__ == $PROGRAM_NAME
  # If there are no command line args then prompt the user
  if ARGV.length != 1
    puts "Usage: ruby euler.rb <input_file>"
  elsif File.exist?(ARGV[0])
    input_file = ARGV[0]
    File.open(input_file, 'r') do |f|
      f.each_line do |line|
        puts "num = #{line}, larges prime = #{largest_prime_factor(line.to_i)}"
      end
    end
  end

  # puts "The largest prime factor for #{num_input} is #{result}"
    
end