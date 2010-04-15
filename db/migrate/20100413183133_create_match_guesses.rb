class CreateMatchGuesses < ActiveRecord::Migration
  def self.up
    create_table :matchguesses do |t|
      t.integer :id
      t.references :match
      t.references :login
      t.references :winning_team

      t.timestamps
    end
  end

  def self.down
    drop_table :matchguesses
  end
end

