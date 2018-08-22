class User < ActiveRecord::Base
	
  attr_accessible :firstname, :lastname, :email, :password, :genre
  validates :email, uniqueness: {message: 'Email already exists'}
  has_and_belongs_to_many :genres
 
end
