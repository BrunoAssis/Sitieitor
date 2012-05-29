class User < ActiveRecord::Base
  attr_accessible :active, :email, :name, :password, :admin
  
  has_many :places, dependent: :destroy
  has_many :events, dependent: :destroy, foreign_key: :owner_id
end