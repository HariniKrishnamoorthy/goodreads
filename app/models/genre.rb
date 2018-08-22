class Genre < ActiveRecord::Base
  attr_accessible :genre
  has_many :bookdetails
  has_and_belongs_to_many :users
  scope :with_name, lambda{ |name| where(genre: name) }
end
