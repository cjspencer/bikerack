class Pin < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :rider
end
