class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :phase, index: true
      t.datetime :date_of_the_game
      t.integer :resulted

      t.timestamps
    end
  end
end
