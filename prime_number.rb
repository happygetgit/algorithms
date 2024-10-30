# 1st method:
# =========================================

# def prime?(num)
#   return false if num <= 1
#   (2..Math.sqrt(num)).each do |i|
#     return false if num % i == 0
#   end
#   true
# end

# Test with a number
# puts "Enter a number:"
# num = gets.chomp.to_i
# puts prime?(num)

# 2nd method
# =========================================

# require 'prime'
# prime_array = Prime.take_while{|p| p < 100 }
# p prime_array
# total_count = prime_array.inject{|sum,x| sum+x }
# p total_count

# 3rd method
# =========================================

def count_how_many_are_prime(array)
  total = 0
  for item in array
    next if item == 1
    is_prime = true
    number = item - 1
    while number > 1
      p number
      if item % number == 0
        is_prime = false
        break
      else
        number = number - 1
      end
    end
    if is_prime == true
      total += 1
    end
  end
  return total
end

array = [1,2,3,4,5,6,7,8,9,10]
p count_how_many_are_prime(array)