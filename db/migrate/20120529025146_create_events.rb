class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :place_id
      t.integer :owner_id
      t.datetime :date

      t.timestamps
    end
  end
end
