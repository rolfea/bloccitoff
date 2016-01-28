desc "Deletes items older than 7 days from Users' To-Do Lists"
task :delete_items => :environment do
  Item.where("created_at <= ?", Time.now - 7.days).destroy_all
end
