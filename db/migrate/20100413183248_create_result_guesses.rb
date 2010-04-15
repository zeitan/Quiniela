class CreateResultGuesses < ActiveRecord::Migration
  def self.up
    create_table :resultguesses do |t|
      t.references :matchguesses
      t.references :team
      t.integer :goals

      t.timestamps
    end
  end

  def self.down
    drop_table :resultguesses
  end
end

