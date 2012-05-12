class ShowTime < ActiveRecord::Base
  attr_accessible :venue, :start_time, :address, :city, :state, :zip_code, :show_date
  
  belongs_to :user
  
  default_scope :order => 'show_times.created_at DESC'
end
