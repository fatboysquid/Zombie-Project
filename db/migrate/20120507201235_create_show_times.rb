class CreateShowTimes < ActiveRecord::Migration
  def change
    create_table :show_times do |t|
      t.integer :user_id
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.date :show_date
      t.time :show_time
      t.string :show_url
      t.timestamps
    end
    add_index :show_times, :user_id
  end
end
