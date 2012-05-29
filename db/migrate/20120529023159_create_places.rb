class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :user_id
      t.string :address
      t.boolean :private, default: true

      t.timestamps
    end
  end
end
