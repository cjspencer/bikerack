class AddAttachmentAvatarToRiders < ActiveRecord::Migration
  def self.up
    change_table :riders do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :riders, :avatar
  end
end
