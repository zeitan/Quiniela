class AddGroupToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :score, :integer
  end

  def self.down
    remove_column :teams, :score
  end
end
