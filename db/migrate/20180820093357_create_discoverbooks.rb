class CreateDiscoverbooks < ActiveRecord::Migration
  def change
    create_table :discoverbooks do |t|

      t.timestamps
    end
  end
end
