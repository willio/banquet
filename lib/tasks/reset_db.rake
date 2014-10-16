namespace :db do
  desc "Drop, migrate and seed the database"
  task :reset_db => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end

  task :add_item => :environment do
  	Item.create(name: "New Item", customer_id: "1")
  end
end