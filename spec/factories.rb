# By using the symbol :user we get Factory Gild to simulate the User model

FactoryGirl.define do

  factory :user do | user |
    user.name     "Factory Girl"
    user.email    "girl@factory.com"
    user.password "foobar"
    user.password_confirmation "foobar"
  end
  
  factory :userToReplyTo, class: User do | user |
    user.name "Donald Duck"
    user.email "donald@entenhausen.de"
    user.password "foobar"
    user.password_confirmation "foobar"
  end
  factory :micropost do |micropost|
    micropost.content "bla bla bla"
    micropost.association :user
  end

  sequence :email do |n|
    "person-#{n}@example.com"
  end

end

 