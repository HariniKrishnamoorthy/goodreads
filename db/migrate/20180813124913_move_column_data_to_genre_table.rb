class MoveColumnDataToGenreTable < ActiveRecord::Migration
  def change
  	User.find_each do |u|
  		 g = Genre.new(genre: u.genre)
  		 g.save

  	end
  end
end
