class ChangeDescriptionTye < ActiveRecord::Migration
  def up
  	change_column :bookdetails, :description, :string
  end

  def down
  end
end
