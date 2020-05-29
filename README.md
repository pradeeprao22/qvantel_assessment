DEPLOYMENT:
-First i need to launch the server using prefered OS in this case i am using ubuntu(linux)
-then i need to install rbenv and ruby dependencies with apt-get in the server
-install rails version 5.2.3 as per the project 
-Now i need to install database(Postgresql or MYSql)
-After that i need to create user for the database and update database.yml with our databse settings

-Push the API code repositery to the server 
-Lets clone the Qventel directory 
-cd Qventel
sudo apt-get install libpq-dev (postgres dependency)
bundle install
RAILS_ENV=production bundle exec rake db:create (creating the database)
rake db:migrate RAILS_ENV=production (doing database tables migration)

-After the above steps NOW I NEED TO SETUP THE BASH PROFILE for our rails app

cd to root of the server
vim .bash_profile
-inside the file i need to add 
export RAILS_ENV="production"
-and then will will save it. Now i need to add rake secret to .bash_profile
export SECRET_KEY_BASH="secret_key" and save it

ADDING UNICORN AND NGINX APP SERVERS 

install gem 'unicorn' and bundle it
now configure the unicorn according to our needs config/unicorn.rb
create the directories that were referred to the configuration file
for pids, sockets, logs

Now create the init script so that i can stop and start the server
run sudo service unicorn_Qventel start

now i will install and configure nginx before launching the application setting up the Nginx reverse proxy
Inside the default server block i will give a path of Unicorn Sock file
and give the root of the API project folder Qventel and other proxy settings after saving and exit the configur Ngnix as a reverse proxy, so HTTP request get forwerd to the Unicorn application server via a unix socket 

Now i will restart the server 
sudo service ngnix restart

Now i will be able to access the RAILS API APP through public ip of server

Note** We can also use a container systems like heroku to deploy it easly 


REST API:
To fetch the data use 
GET localhost:3000/customers (it will give you all the json date for customers, invoices and payments)

For creating the data we need to create step by step because payments is depennds on invoices and customers and invoices depends on customer
POST localhost:3000/customers
POST localhost:3000/invoices
POST localhost:3000/payments


TESTING:
I have covered unit testing for all the three models 
and also did the feature testing for customers controller  