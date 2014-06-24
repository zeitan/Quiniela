class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.references :tournament, index: true
      t.string :name
      t.boolean :penals
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
