class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.boolean :online
      t.string :place
      t.boolean :status
      t.date :date
      t.time :time_starting
      t.time :time_ending
      t.integer :rating_student
      t.integer :cost

      t.timestamps
    end
  end
end
