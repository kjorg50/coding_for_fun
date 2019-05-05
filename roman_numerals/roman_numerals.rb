#!/bin/ruby

# 26 Feb 2019, Kyle Jorgensen
# Coding for fun
# https://www.hackerrank.com/contests/computing-society-uwi-mona-welcome-competition/challenges/roman-numeral-converter


def numeric?(str)
  !str.to_s.match(/^-?[\d.]+$/).nil?
  # str.to_i.to_s == str
end

def convert_to_roman(str)
  result = ''
  num = str.to_i

  #require 'byebug'; byebug

  # if divisible by 1000
  if num / 1000 > 0
    thous = num / 1000
    thous.times {result += 'M'}
    num %= 1000
  end

  # check if 900's
  if num / 100 == 9
    result += 'CM'
    num %= 100
  end

  # if divisble by 500
  if num / 500 > 0
    result += 'D'
    num %= 500
  end

  # check hundreds
  if num / 100 > 0
    hunds = num / 100
    hunds == 4 ? (result += 'DC') : hunds.times {result += 'C'}
    num %= 100
  end

  # check 90's
  if num / 10 == 9
    result += 'XC'
    num %= 10
  end

  # check 50's
  if num / 50 > 0
    result += 'L'
    num %= 50
  end

  # check 10's
  if num / 10 > 0
    tens = num / 10
    tens == 4 ? (result += 'XL') : tens.times {result += 'X'}
    num %= 10
  end

  # check 9's
  if num / 1 == 9
    result += 'IX'
    num %= 1
  end

  # check 5's
  if num / 5 > 0
    result += 'V'
    num %= 5
  end

  # check ones
  if num / 1 > 0
    ones = num / 1
    ones == 4 ? (result += 'IV') : ones.times {result += 'I'}
  end

  puts result
end

if __FILE__ == $PROGRAM_NAME
  if ARGV.length != 1
    puts "Usage: ruby roman_numerals.rb <integer|roman number>"
  elsif numeric?(ARGV[0])
    convert_to_roman(ARGV[0])
  else # if roman

  end

end