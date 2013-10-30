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
science = Subject.create(section: "Science", name: "Reasoning")
#Create Pages
page_1 = algebra.pages.create(sequence_id: 1)
page_2 = algebra.pages.create(sequence_id: 2)
page_3 = english.pages.create(sequence_id: 1)
page_4 = english.pages.create(sequence_id: 2)
page_5 = english.pages.create(sequence_id: 3)
page_6 = english.pages.create(sequence_id: 4)
page_7 = science.pages.create(sequence_id: 5)
page_8 = science.pages.create(sequence_id: 6)
page_9 = science.pages.create(sequence_id: 7)

#Create Questions
ques_1 = Question.create(body: "What is 2 + 2?", choices: [1,3,4,6], correct_answer: 4)
ques_2 = Question.create(body: "Can you read this?", choices: ["yes", "no"], correct_answer: "yes")
ques_3 = Question.create(body: "This format presents students 

and interpretation of information presented in tables, diagrams, and figures.", choices: [36, 48, 98], correct_answer: 48)

#Create Instructions
instruc_1 = Instruction.create(body: "Do this and that!")
instruc_2 = Instruction.create(body: "Read Letter by Letter")
instruc_3 = Instruction.create(body: "Read Read Read")
instruc_4 = Instruction.create(body: "Read Read Read")
instruc_5 = Instruction.create(body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
instruc_6 = Instruction.create(body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
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
page_1.save!
page_2.save!
page_3.save!
page_4.save!
page_5.save!
page_6.save!
page_7.save!
page_8.save!
page_9.save!

#Password/Authentication Data for Devise login
admin = User.create(
    name: 'Joe',
    email: 'joseph.charles.marshall@gmail.com',
    password: 'password',
    admin: true
  )