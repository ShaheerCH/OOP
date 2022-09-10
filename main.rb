require './student'

def main
  student-x = Student.new(age: 10, name: 'Ak', classroom: '5th Grade')
  puts "Can student named #{student-x.name} use service?"
  puts "R/ #{student-x.can_use_service?}"
  puts student-x.play_hooky
end
