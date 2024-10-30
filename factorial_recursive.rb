def factorial_recursive(n)
  if n < 0
    raise ArgumentError, "Factorial is not defined for negative numbers."
  elsif n == 0 || n == 1
    return 1
  else
    return n * factorial_recursive(n - 1)
  end
end

# Example usage
puts "Factorial of 5 is #{factorial_recursive(5)}" # Output: 120
