ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 => '587',
  :authentication       => :plain,
  :user_name            => 'app46390208@heroku.com',
  :password             => 'ngb7wh4u9609',
  :domain               => 'heroku.com',
  :enable_starttls_auto => true,
}
