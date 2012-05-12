class RenameShowTimeInShowTimes < ActiveRecord::Migration
  def change
    rename_column :show_times, :show_time, :start_time
  end
end
