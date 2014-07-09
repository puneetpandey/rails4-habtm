namespace :seed_data do
  desc "This task will create few communities in DB"
  task :load => :environment do
    Community.create!(name: "Test Community 1", description: "Test Community 1")
    Community.create!(name: "Test Community 2", description: "Test Community 2")
    Community.create!(name: "Test Community 3", description: "Test Community 3")
    Community.create!(name: "Test Community 4", description: "Test Community 4")
    Community.create!(name: "Test Community 5", description: "Test Community 5")
    Community.create!(name: "Test Community 6", description: "Test Community 6")
    Community.create!(name: "Test Community 7", description: "Test Community 7")
    Community.create!(name: "Test Community 8", description: "Test Community 8")
    Community.create!(name: "Test Community 9", description: "Test Community 9")
    Community.create!(name: "Test Community 10", description: "Test Community 10")
    Community.create!(name: "Test Community 11", description: "Test Community 11")
  end
end
