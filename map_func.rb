# MyMap method
class MyArray < Array
  def mymap(&block)
    output = []
    if block_given?
      self.each do |e|
        output << block.call(e)
      end
      output
    else
      raise ArgumentError
    end
  end
end

new_arr = MyArray.new([1,2,3,4,5])
puts new_arr.mymap { |x| x*x }


# def my_map(arr, &block)
#   output = []
#   if block_given?
#   arr.each do |e|
#     output << block.call(e)
#   end
#   output
# else
#   raise ArgumentError
# end
# end
#
# ar = [1,2,3]
# puts my_map(ar) { |x| x * x }
# Output 1 4 9
# Implement each, select and find methods in ruby
