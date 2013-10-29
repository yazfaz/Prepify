# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Subjects 
algebra = Subject.create(section: "Math",name:"Algebra")
english = Subject.create(section: "English", name: "Reading")
#Create Pages
page_1 = algebra.pages.create(sequence_id: 1)
page_2 = algebra.pages.create(sequence_id: 2)
page_3 = english.pages.create(sequence_id: 1)
page_4 = english.pages.create(sequence_id: 2)
page_5 = english.pages.create(sequence_id: 3)
page_6 = english.pages.create(sequence_id: 4)

#Create Questions
ques_1 = Question.create(body: "What is 2 + 2?", choices: [1,3,4,6], correct_answer: 4)
ques_2 = Question.create(body: "Can you read this?", choices: ["yes", "no"], correct_answer: "yes")
#Create Instructions
instruc_1 = Instruction.create(body: "Do this and that!")
instruc_2 = Instruction.create(body: "Read Letter by Letter")
instruc_3 = Instruction.create(body: "Read Read Read")
instruc_4 = Instruction.create(body: "Read Read Read")
#Link pages to either question/instruction
page_1.pageable = instruc_1
page_2.pageable = ques_1
page_3.pageable = instruc_2
page_4.pageable = ques_2
page_5.pageable = instruc_3
page_6.pageable = instruc_4
page_1.save!
page_2.save!
page_3.save!
page_4.save!
page_5.save!
page_6.save!

#Password/Authentication Data for Devise login
admin = User.create(
    name: 'Joe',
    email: 'joseph.charles.marshall@gmail.com',
    password: 'password',
    admin: true
  )