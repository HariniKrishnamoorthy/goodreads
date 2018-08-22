class CreateBookdetails < ActiveRecord::Migration
  def change
    create_table :bookdetails do |t|
    	t.string :genre
      
    end
  end
end
