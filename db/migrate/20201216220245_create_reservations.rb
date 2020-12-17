class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :user_name
      t.datetime :time
      t.string :menu_name

      t.timestamps
    end
  end
end
