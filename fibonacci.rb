# 1st method
#=================================
# def fibonacci_digit_counter
#   num1, num2, i = -1, 0, 1

#   while i.to_s.length < 1000
#     num1 += 1
#     i, num2 = num2, num2 + i
#   end
#   num1
# end

# p fibonacci_digit_counter

# 2nd method
#=================================

# def fibonacci_digit_counter(n)
  # fibonacci_numbers = [0, 1] # Initialize the first two Fibonacci numbers

  # Generate Fibonacci numbers up to the nth Fibonacci number
  # (2..n).each do |i|
    # fibonacci_numbers[i] = fibonacci_numbers[i - 1] + fibonacci_numbers[i - 2]
  # end

  # Count the digits in each Fibonacci number
  # digit_counts = fibonacci_numbers.map { |num| num.to_s.length }

  # Return the Fibonacci numbers and their respective digit counts
  # fibonacci_numbers.each_with_index do |num, index|
    # puts "Fibonacci(#{index}): #{num} - Digits: #{digit_counts[index]}"
  # end
# end

# Example: Count the digits of the first 20 Fibonacci numbers
# fibonacci_digit_counter(5)

# 3rd method (recursive)
#=================================

def fibonacci(count)
  if count <= 1
    return count
  else
    return fibonacci(count - 1) + fibonacci(count - 2)
  end
end

puts fibonacci(8)