class Like < ActiveRecord::Base
  belongs_to :rider
  belongs_to :pin
  validates_uniqueness_of :pin_id, scope: :rider_id
end
