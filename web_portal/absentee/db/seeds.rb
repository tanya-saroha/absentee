# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
s = School.create(name: "Josh Public School")

Klass.create([{title: 1, school_id: s.id},{title: 2, school_id: s.id},{title: 3, school_id: s.id},{title: 4, school_id: s.id},
  {title: 5, school_id: s.id},{title: 6, school_id: s.id},{title: 7, school_id: s.id},{title: 9, school_id: s.id}])

Klass.all.each do |div|
  div.sections.create([{name: "A"}, {name: "B"}])
end

Klass.all.each do |div|
	div.sections.each do |sec|
	  sec.students.create([{name: "Mahesh", roll_number: 1, klass_id: div.id},
      {name: "shivam", roll_number: 21, klass_id: div.id},
      {name: "sweta", roll_number: 31, klass_id: div.id},
      {name: "Tanya", roll_number: 41, klass_id: div.id},
      {name: "Prateek", roll_number: 51, klass_id: div.id}])
	end
end

Student.all.each do |student|
	student.attendances.create(date: Time.now, klass_id: student.klass_id, section_id: student.section_id)
end
