class PossibleDate < ActiveRecord::Base
  attr_accessible :date_from, :date_to, :event_id
  
  belongs_to :event
end
