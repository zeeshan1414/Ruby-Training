# Create a ruby block which takes an argument and multiply with 2
def test_block(n)
  yield n * 2
end

def block_method_example
  test_block { |n| puts "#{n}" }
end

# block_method_example()

# Implement a Proc which takes an argument and multiply with 2. Call this proc inside a loop
proc = proc { |n| n*2 }
arr2 = [1,2,3,4,5]
arr2.each do |n|
  puts proc.call(n)
end

# Implement a Lambda which takes an argument  and returns the output by multiply arg with 2.
# Call this lambda inside a loop and return modified array
lambda = ->(n) { n * 2 }
arr = [1,2,3,4,5].map { |n| lambda.call(n) }
puts arr
