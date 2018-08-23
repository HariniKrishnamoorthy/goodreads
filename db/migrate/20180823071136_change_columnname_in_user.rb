class ChangeColumnnameInUser < ActiveRecord::Migration
  def up
  	rename_column :users, :password_digest, :password
  end

  def down
  end
end
