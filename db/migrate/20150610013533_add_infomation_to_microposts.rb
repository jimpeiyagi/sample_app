class AddInfomationToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :ridedate, :datetime
    add_column :microposts, :from, :string
    add_column :microposts, :to, :string
    add_column :microposts, :can_ride_person, :integer
    add_column :microposts, :ride_on_flag, :boolean
  end
end
