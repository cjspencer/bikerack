class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :pin_id
      t.integer :rider_id

      t.timestamps null: false
    end
  end
end
