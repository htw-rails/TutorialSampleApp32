Welcome to the SampleApp
========================
This is a rails sample application based on Michael Hartl's Ruby on Rails Tutorial, which is available 
here: <http://ruby.railstutorial.org/ruby-on-rails-tutorial-book>

This Document is written in markdown, see
<http://daringfireball.net/projects/markdown/syntax>

It was first written for rails 3.0.1, then successively migrated first to rails 3.1 and then 3.2. It might therefore differ from the version described in the book that is now directly written for rails 3.2


Things to show in class
________________________

Generate Sample Data with a rake task
(Described in Section 9.3.2)
http://ruby.railstutorial.org/chapters/updating-showing-and-deleting-users#sec:sample_users

$ bundle exec rake db:reset
$ bundle exec rake db:populate




Walk thru running App

Home Pages: shows all posts of followed users
(not very clear, as they have been added in order)

Heroku
------
<http://ruby.railstutorial.org/chapters/beginning#sec:1.4.1>

  gem install heroku
  heroku keys:add
  heroku create --stack cedar
  git push heroku master
  heroku run rake db:migrate
  heroku open


  heroku help
  heroku db:push
  heroku logs

AJAX
----
http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html
:remote => true