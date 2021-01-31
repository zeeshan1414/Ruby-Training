# MyFind method
class MyArray < Array
  def myfind(&block)
    if block_given?
      self.each do |e|
        if yield(e)
          return e
        end
      end
      nil
    else
      raise ArgumentError
    end
  end
end

new_arr = MyArray.new([1,2,3,4,5])
puts new_arr.myfind { |x| x%2 == 0 }
