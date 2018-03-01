class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.float :price

      t.timestamps
    end
  end
end
