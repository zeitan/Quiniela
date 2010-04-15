class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.references :match
      t.references :team
      t.integer :goals

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end

