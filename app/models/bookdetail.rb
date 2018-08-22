class Bookdetail < ActiveRecord::Base
  attr_accessible :bookname, :author, :price, :description, :genre_id
  belongs_to :genre
  
 end
