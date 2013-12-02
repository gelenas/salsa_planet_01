namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "test@hi.org")
    99.times do |n|
      name  = Faker::Name.name
      email = "test-#{n+1}@hi.org"
      User.create!(name: name,
                   email: email)
    end
  end
end