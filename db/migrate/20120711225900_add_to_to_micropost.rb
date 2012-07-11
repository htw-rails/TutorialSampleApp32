class AddToToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :to_id, :integer
  end
end
