# Method 1
student_records = Array.new(4, {name: '', roll_no: 1, marks: 100})
# puts student_records

# Method 2
student_records_2 = Array.new
student_records_2 << { name: 'student_1', roll_no: 1, marks: 35 }
student_records_2 << { name: 'student_2', roll_no: 2, marks: 80 }
student_records_2 << { name: 'student_3', roll_no: 3, marks: 70 }

# puts student_records_2

# Check for passing marks

def student_pass?(student_arr, student_name)
  student_arr.each do |student|
    if student[:name] == student_name
      return student[:marks] >= 35
    end
  end
end

# student_name = 'student_1'
# puts student_pass?(student_records_2, student_name) ? "#{student_name} Passed" : "#{student_name} Failed"

class StudentHash
  @@students = Array.new

  def add_student(name, roll_no, marks)
    @@students << { name: name, roll_no: roll_no, marks: marks}
  end

  def all_students
    @@students
  end
end

def student_pass?(students, student_name)
  students.each do |student|
    if student[:name] == student_name
      return student[:marks] >= 35
    end
  end
end

def student_grades(student)
  case student[:marks]

  when 80..100
    puts 'A'

  when 60..80
    puts 'B'

  when 40..60
    puts 'C'

  else
    puts 'D'
  end
end

students = StudentHash.new
students.add_student('Mark', 1, 30)
students.add_student('John', 2, 35)
students.add_student('Mary', 3, 40)

first_student =  students.all_students[0]

# student_grades(first_student)

total_students = students.all_students

def calculate_percentage(students, total_marks)
  students.each do |student|
    student[:percentage] = (student[:marks] * total_marks)/100
  end
end

puts calculate_percentage(total_students, 100)
puts total_students
