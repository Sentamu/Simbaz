ActionMailer::Base.smtp_settings = { 
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'sentsjman2@gmail.com',
  :password             => 'sentrack',
  :authentication       => 'plain',
  :enable_starttls_auto => true
  }