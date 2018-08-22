class Addcolumntobookdetails < ActiveRecord::Migration
  def up
  	 add_column :bookdetails, :bookname, :string
  	 add_column :bookdetails, :author, :string
  	 add_column :bookdetails, :price, :number
  	 add_column :bookdetails, :description, :text
  end

  def down
  end
end
