#1st method
# ========================

# class ProjectEulerTwo
  # def initialize(max)
    # @num_1 =  0
    # @i = 0
    # @sum = 0
    # @num_2 = 1
    # @max = max
  # end

  # def even_fibonacci
    # while @i <= @max
      # @i = @num_1 + @num_2
      # @sum += @i if @i % 2 == 0 
      # @num_1 = @num_2
      # @num_2 = @i
    # end
    # @sum
  # end
# end

# result = ProjectEulerTwo.new(10)
# p result.even_fibonacci

# 3rd method
# ==================================

# def even_fibonacci_numbers(limit)
#   fibonacci_numbers = [0, 1] # Initialize the first two Fibonacci numbers

  # Generate Fibonacci numbers up to the limit
  # while (next_fib = fibonacci_numbers[-1] + fibonacci_numbers[-2]) <= limit
    # fibonacci_numbers << next_fib
  # end

  # Filter out even Fibonacci numbers
  # even_fibs = fibonacci_numbers.select { |num| num.even? }

  # Return the even Fibonacci numbers
  # even_fibs
# end

# Example: Find even Fibonacci numbers up to 100
# limit = 100
# even_fibs = even_fibonacci_numbers(limit)
# puts "Even Fibonacci numbers up to #{limit}: #{even_fibs.join(', ')}"


# 3rd method
# ==========================

def fibonacci(count)
  number = 0
  sequence = []
  sum = 0
  (0..count).each do |item|
    number =  item if item <= 1
    number =  sequence[-1] + sequence[-2] if item > 1
    sequence << number
    p sequence
    sum += number if number % 2 == 0
  end
  sum
end

puts fibonacci(8)