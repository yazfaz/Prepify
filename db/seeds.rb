# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create Subjects 
algebra = Subject.create(section: "Math",name:"Algebra")
comprehension = Subject.create(section: "Critical Reading", name: "Comprehension")
grammar = Subject.create(section: "Writing", name: "Grammar")
algebra2 = Subject.create(section: "Math", name: "Algebra II")
geometry = Subject.create(section: "Math", name: "Geometry")
trigonometry = Subject.create(section: "Math", name: "Trigonometry")


#Create Pages
page_1 = algebra.pages.create(sequence_id: 1)
page_2 = algebra.pages.create(sequence_id: 2)
page_3 = comprehension.pages.create(sequence_id: 1)
page_4 = comprehension.pages.create(sequence_id: 2)
page_5 = comprehension.pages.create(sequence_id: 3)
page_6 = comprehension.pages.create(sequence_id: 4)
page_7 = grammar.pages.create(sequence_id: 5)
page_8 = grammar.pages.create(sequence_id: 6)
page_9 = grammar.pages.create(sequence_id: 7)
page_10 = algebra2.pages.create(sequence_id: 1)
page_11 = algebra2.pages.create(sequence_id: 2)
page_12 = geometry.pages.create(sequence_id: 1)
page_13 = geometry.pages.create(sequence_id: 2)
page_14 = trigonometry.pages.create(sequence_id: 1)
page_15 = trigonometry.pages.create(sequence_id: 2)

#Create Questions
ques_1 = Question.create(body: "What is 2 + 2?", choices: [1,3,4,6], correct_answer: 4)
ques_2 = Question.create(body: "Pick 48.", choices: [36, 48, 98], correct_answer: 48)
ques_3 = Question.create(body: "Can you read?", choices: ["yes", "no"], correct_answer: "yes")
ques_4 = Question.create(body: "What is 5 * 5?", choices: [25, 250, 2500,25000], correct_answer: 25)
ques_5 = Question.create(body: "Pick 100", choices: [100, 10, 1, 1000], correct_answer: 100)
ques_6 = Question.create(body: "Pick 30.", choices:[30, 3000, 30000, 300], correct_answer: 30)

#Create Instructions
instruc_1 = Instruction.create(body: "Do this and that!")
instruc_2 = Instruction.create(body: "Read Letter by Letter")
instruc_3 = Instruction.create(body: "Read Read Read")
instruc_4 = Instruction.create(body: "Read Read Read")
instruc_5 = Instruction.create(body: "Lorem ipsum dolor amet.")
instruc_6 = Instruction.create(body: "Lorem ipsum dolor amet.")
instruc_7 = Instruction.create(body: "Do this and that again.")
instruc_8 = Instruction.create(body: "Find a triangle.")
instruc_9 = Instruction.create(body: "Find a circle.")

#Link pages to either question/instruction
page_1.pageable = instruc_1
page_2.pageable = ques_1
page_3.pageable = instruc_2
page_4.pageable = ques_2
page_5.pageable = instruc_3
page_6.pageable = instruc_4
page_7.pageable = instruc_5
page_8.pageable = ques_3
page_9.pageable = instruc_6
page_10.pageable = instruc_7
page_11.pageable = ques_4
page_12.pageable = instruc_8
page_13.pageable = ques_5
page_14.pageable = instruc_9
page_15.pageable = ques_6

page_1.save!
page_2.save!
page_3.save!
page_4.save!
page_5.save!
page_6.save!
page_7.save!
page_8.save!
page_9.save!
page_10.save!
page_11.save!
page_12.save!
page_13.save!
page_14.save!
page_15.save!


#Password/Authentication Data for Devise login
admin = User.create(
    name: 'Joe',
    email: 'joseph.charles.marshall@gmail.com',
    password: 'password',
    admin: true
  )

User.create(name:"Admin", email:"prepifytest@gmail.com", password:"password", admin: true)