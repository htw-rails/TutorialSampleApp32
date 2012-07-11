class AddReplyToUserFieldToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :in_reply_to_id, :integer

  end
end
