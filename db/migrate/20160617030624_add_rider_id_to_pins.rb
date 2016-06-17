class AddRiderIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :rider_id, :integer
  end
end
