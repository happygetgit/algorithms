def sum_of_divisors(n)
  (1...n).select{|i| n%i == 0 }.sum
end

def amicable_numbers?(a, b)
  sum_of_divisors(a) == b && sum_of_divisors(b) == a
end

puts amicable_numbers?(220, 284) # true
puts amicable_numbers?(1184, 1210) # true
puts amicable_numbers?(10, 20) # false
