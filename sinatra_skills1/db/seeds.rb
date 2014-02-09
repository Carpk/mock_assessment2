require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# TODO: create associations between users and skills

8.times do
  Proficiency.create(user_id: rand(1..6),
    skill_id: rand(1..2),
    experiance: rand(1..12),
    educated: rand(1..2) == 2)
end


      # t.integer :user_id
      # t.integer :skill_id
      # t.integer :experiance
      # t.boolean :educated, :default => false