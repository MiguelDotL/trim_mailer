# TRIM MAILER
### A Stylish Email Form with Persisting Data
Built for my [Apprenticeship 2.0](http://trimagency.com/apprentice/) coding challenge with [Trim Agecy](http://trimagency.com/)

* [The Specs](https://github.com/MiguelDotL/trim_mailer/blob/master/CodeChallengeSpec.pdf) - What I Got
* [The MockUp](https://www.dropbox.com/s/fcmmghnfrszfk6l/codingchallenge.psd?dl=0) - How it Needed to Look
* [The Final Product](https://trim-mailer.herokuapp.com/) - What I Sent Them

### Ruby Version:
* Development: ruby 2.3.3
* Production:  ruby 2.2.6

### Dependencies & Services
* Rails 5.0.1^
* PostGreSQL 9.5.5^
* [SendGrid](https://sendgrid.com) Mail Service Account

### Configuration & Deployment
* Clone or [Fork](https://github.com/MiguelDotL/trim_mailer#fork-destination-box) my [Repo](https://github.com/MiguelDotL/trim_mailer)
* `cd` into App Directory and run the`bundle install` command to load gem dependencies
* Start the Server on Port `3000` with the `rails s` command 
* Initialize the PostGreSQL Database with the `rake db:setup` command
* Create a `.env` file in the Root App Directory and Add the Following Enviornment Variables:
```ruby
export MY_EMAIL="example@domain.com" # your email address for testing live results
export TRIM_EMAIL="example@domain.com" # the target email address
export SENDGRID_PASSWORD="secretHandShake" # your password generated by SendGrid
export SENDGRID_USERNAME="juanDoe@domain.com" # your username generated by SendGrid
```
* Have Fun!
