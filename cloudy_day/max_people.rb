#!/bin/ruby
# Kyle Jorgensen, 16 Feb 2018
# From https://www.hackerrank.com/contests/hourrank-26/challenges/cloudy-day

# Return the maximum number of people that will be in a sunny town after removing exactly one cloud.
def maximum_people(p, x, y, r)
  population = p.reduce(0,:+)

  # find the towns which have clouds in them
  # this array will contain their locations on the coordinate axis
  c = []

  # loop through the cloud locations and find which towns they cover
  y.each_with_index do |item, index|
    lower_bound = item - r[index]
    upper_bound = item + r[index]

    # for a given cloud, search through it's range and see if it covers any towns
    (lower_bound..upper_bound).each do |j|
      if x.include? j do
        c.push(j) unless c.include? j
      end
    end
  end

  calc_max(p, x, c)

end

# Perform the calculation of the maximum population acheivable by removing 1 cloud
# param p array of populations of towns
# param x array of town locations on axis
# param c array of cloudy town locations on axis
def calc_max(p, x, c)
  # first calculate the total population that is already sunny
  sunny_pop = 0

  # if a town location does not have a cloud over it, add it to the sunny population
  x.each_with_index do |item, index|
    if item != c[index] do
      sunny_pop += p[index]
    end
  end

  max_pop = sunny_pop
  index_to_remove = c.length - 1

  x.each_with_index do |item, index|
    
  end
end

# n represents the number of towns
n = gets.strip.to_i

# p is an array which contains the populations of the respective towns
p = gets.strip
p = p.split(' ').map(&:to_i)

# x is an array which contains the locations of the respective towns on the one-dimensional line
x = gets.strip
x = x.split(' ').map(&:to_i)

# m denotes the number of clouds covering the city
m = gets.strip.to_i

# y is an array which contains the locations of the clouds on the coordinate axis
y = gets.strip
y = y.split(' ').map(&:to_i)

# r is an array which represents the range of each cloud
# NOTE: Each ith cloud covers every town with location in the range [y_i - r_i, y_i + r_i].
r = gets.strip
r = r.split(' ').map(&:to_i)

result = maximum_people(p, x, y, r)

puts result