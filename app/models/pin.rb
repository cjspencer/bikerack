class Pin < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :rider
  has_many :likes, dependent: :destroy
  has_many :liked_riders, through: :likes, source: :rider

  has_attached_file :pin_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :pin_image, content_type: /\Aimage\/.*\Z/

  def repost(rider)
    repost_pin = self.dup
    repost_pin.rider_id = rider.id
    repost_pin.original_pin_id = self.id
    repost_pin.pin_image = self.pin_image
    repost_pin.save
  end

  def is_repost?
    original_pin_id.present?
  end

  def original_pin
    Pin.find(original_pin_id) if is_repost?
  end

end
