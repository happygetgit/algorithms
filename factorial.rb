# 1st method
# =============================

# def factorial_value_sum_generator(factorial)
#   arr = (1..factorial).to_a.reverse.each{ |i| factorial += factorial * (i - 1) }
#   factorial.to_s.split(//).map(&:to_i).inject(:+)
# end

# p factorial_value_sum_generator(100)

# 2nd method
# =============================

def factorial_iterative(n)
  if n < 0
    raise ArgumentError, "Factorial is not defined for negative numbers."
  end

  result = 1
  (1..n).each do |i|
    result *= i
  end
  result
end

# Example usage
puts "Factorial of 5 is #{factorial_iterative(5)}" # Output: 120

