class RemoveColumnFromUser < ActiveRecord::Migration
  def up
  	remove_column :users, :genre
  end

  def down
  end
end
