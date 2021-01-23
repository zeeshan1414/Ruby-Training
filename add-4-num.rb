# Add 4 Numbers
class Variables
  CONST_VAR = 10
  @@class_var = 30

  def initialize(num)
    @ins_var = num
  end

  def add_num(local_var)
    sum = CONST_VAR + @ins_var + @@class_var + local_var
    @ins_var += 1
    @@class_var += 1
    return sum
  end
end

new_ins = Variables.new(20)
local = 40
puts new_ins.add_num(local)
new_2 = Variables.new(20)
puts new_2.add_num(local)
