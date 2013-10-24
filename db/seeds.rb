# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Subjects 
algebra = Subject.create(section: "Math",name:"Algebra")
#Create Pages
page_1 = algebra.pages.create(sequence_id: 1)
page_2 = algebra.pages.create(sequence_id: 2)
#Create Questions
ques_1 = Question.create(body: "What is 2 + 2?", choices: [1,3,4,6], correct_answer:"4")
#Create Instructions
instruc_1 = Instruction.create(body: "Do this and that!")
#Link pages to either question/instruction
page_1.pageable = instruc_1
page_2.pageable = ques_1
page_1.save
page_2.save

#Password/Authentication Data for Devise login
admin = Admin.create(
    name: 'Joe',
    email: 'joseph.charles.marshall@gmail.com',
    password: 'password',
  )