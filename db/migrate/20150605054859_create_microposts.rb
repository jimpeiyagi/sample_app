class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.datetime :ridedate
      t.string :from
      t.string :to
      t.integer :can_ride_person
      t.boolean :ride_on_flg

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
