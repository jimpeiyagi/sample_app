class RemoverideOnFlagFrommicroposts < ActiveRecord::Migration
  def change
  	remove_column :ride_on_flag
  end
end
