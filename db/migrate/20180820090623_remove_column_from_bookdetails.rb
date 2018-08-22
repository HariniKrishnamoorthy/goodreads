class RemoveColumnFromBookdetails < ActiveRecord::Migration
  def up
  	remove_column :bookdetails, :genre
  end

  def down
  end
end
