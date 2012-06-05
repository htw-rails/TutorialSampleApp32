# By using the symbol :user we get Factory Gild to simulate the User model

Factory.define :user do | user |
  user.name     "Factory Girl"
  user.email    "girl@factory.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "bla bla bla"
  micropost.association :user
end
