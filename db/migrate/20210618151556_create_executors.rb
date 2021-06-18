class CreateExecutors < ActiveRecord::Migration[6.0]
  def change
    create_table :executors do |t|
      t.string :institute_id, foreign_key: true
      t.string :institute_department
      t.integer :employee_service_number
      t.string :full_name
      t.string :position
      t.decimal :salary, precision: 11, scale: 2
      t.integer :work_experience
      t.string :address
    end
  end
end
