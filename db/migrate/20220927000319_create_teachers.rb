class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :phone_number
      t.string :description
      t.integer :rating
      t.integer :time_cost_per_hour
      t.string :subject

      t.timestamps
    end
  end
end
