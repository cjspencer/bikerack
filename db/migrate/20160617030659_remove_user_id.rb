class RemoveUserId < ActiveRecord::Migration
  def change
      remove_column :pins, :user_id
  end
end
