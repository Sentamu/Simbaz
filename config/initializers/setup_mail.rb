ActionMailer::Base.smtp_settings = { 
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'sentams.com@gmail.com',
  :password             => 'sentams1s',
  :authentication       => 'plain',
  :enable_starttls_auto => true
  }