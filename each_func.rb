# MyEach method
class MyArray < Array
  def initialize(arr)
    @output = arr
  end
  def myeach(&block)
    if block_given?
      i = 0
      while i < @output.length
        yield @output[i]
        i += 1
      end
      @output
    else
      raise ArgumentError
    end
  end
end

new_arr = MyArray.new([1,2,3,4,5])
new_arr.myeach { |x| puts x }
