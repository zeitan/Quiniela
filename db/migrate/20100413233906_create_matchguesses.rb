class CreateMatchguesses < ActiveRecord::Migration
  def self.up
    create_table :matchguesses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :matchguesses
  end
end
