class Place < ActiveRecord::Base
  attr_accessible :address, :name, :private, :user_id
  
  has_many :events, dependent: :restrict
  
  belongs_to :user
  
  scope :visible, lambda {|current_user = nil| where('private = ? OR user_id = ?', false, current_user) }
end