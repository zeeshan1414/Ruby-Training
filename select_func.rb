# MySelect method
class MyArray < Array
  def myselect(&block)
    output = []
    if block_given?
      self.each do |e|
        output << e if block.call(e) == true
      end
      output
    else
      raise ArgumentError
    end
  end
end

new_arr = MyArray.new([1,2,3,4,5])
puts new_arr.myselect { |x| x%2==0 }
