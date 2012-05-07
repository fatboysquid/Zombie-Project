class ChangeScoreAtUsers < ActiveRecord::Migration
  def up
    change_column :users, :score, :integer, :default => 0
  end
  def down
    change_column :users, :score, :integer
  end
end
