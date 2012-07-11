# == Schema Information
# Schema version: 20110323184621
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :text
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
 # attr_writer :in_reply_to
  @@reply_to_regexp = /\A@([^\s]*)/
  attr_accessible :content
  belongs_to :user
  belongs_to :in_reply_to, class_name: "User"
    
  default_scope :order => 'microposts.created_at DESC'
  before_save :extract_in_reply_to
 # Return microposts from the users being followed by the given user.
  scope :from_users_followed_by, lambda { |user| followed_by(user) }


  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true

 private

    # Return an SQL condition for users followed by the given user.
    # We include the user's own id as well.
    def self.followed_by(user)
      followed_ids = %(SELECT followed_id FROM relationships
                       WHERE follower_id = :user_id)
      where("user_id IN (#{followed_ids}) OR user_id = :user_id",
            { :user_id => user })
    end
    def extract_in_reply_to
      if match = @@reply_to_regexp.match(content)
        user = User.find_by_shorthand(match[1])
        self.in_reply_to=user if user
      end
    end
    

end
