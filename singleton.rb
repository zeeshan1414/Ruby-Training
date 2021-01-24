obj1 = "this is an object"
obj2 = "this is another object"

p obj1.size
p obj2.size

def obj1.size
  p 'singleon method'
  'now size is a singleton method'
end

p obj1.size
p obj2.size
