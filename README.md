Versions:
    ruby: ruby 2.3.1p112
    rails: Rails 5.1.6
    bootstrap: 4
    
Steps to run:

Step 1: git clone https://github.com/tanu1709/team_lunch_plan.git
Step 2: git pull
Step 3: cd assignment
Step 4: sh run.sh

Manager data
    name: Manager1
    email: manager1@gmail.com (give valid email change in seeds.rb)
    password: test1234
    
Send mail
    For sending mail change the default mail id from application_mailer.rb and development.rb

For letter_opener
	Change the config.action_mailer.delivery_method = :smtp in development.rb to
	config.action_mailer.delivery_method = :letter_opener
