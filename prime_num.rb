def is_prime(num)
  (2..(num - 1)).each do |n|
    return false if num % n == 0
  end
  return true
end
# puts is_prime(11)

def n_prime(n)
  (1..n).select { |num| is_prime(num) && num % 10 != 7 }
end

puts n_prime(100)
