namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Will",
                         :email => "wfrnkln@example.com",
                         :password => "Jackdog1",
                         :password_confirmation => "Jackdog1")
    admin.toggle!(:admin)
    
    100.times do |n|
      User.create!(:name => Faker::Name.name,
                 :email => "email#{n+1}@example.com",
                 :password => "example",
                 :password_confirmation => "example")
    end
  end
end