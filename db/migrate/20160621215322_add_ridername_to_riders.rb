class AddRidernameToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :ridername, :string
  end
end
