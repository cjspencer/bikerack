class AddBioToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :bio, :string
  end
end
