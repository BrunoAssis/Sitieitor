class Event < ActiveRecord::Base
  attr_accessible :owner_id, :place_id, :name
  
  has_many :possible_dates, dependent: :destroy
  
  belongs_to :user, foreign_key: :owner_id
  belongs_to :place
end
