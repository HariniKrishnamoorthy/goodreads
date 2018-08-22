class AddGenreIdToBookdetails < ActiveRecord::Migration
  def change
  	add_column :bookdetails, :genre_id, :integer
  end
end
