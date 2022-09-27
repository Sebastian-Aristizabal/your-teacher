class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.string :phone_number
      t.string :description

      t.timestamps
    end
  end
end
