class CreateGenresUsers < ActiveRecord::Migration
  def up
  	create_table :genres_users, id: false do |t|
      t.belongs_to :genre, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
    end

  end

  def down
  	drop_table :genres_users
  end
end
