class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :id
      t.string :name
      t.date :datematch
      t.references :winning_team
      t.references :group

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end

