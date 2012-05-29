class CreatePossibleDates < ActiveRecord::Migration
  def change
    create_table :possible_dates do |t|
      t.integer :event_id
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
