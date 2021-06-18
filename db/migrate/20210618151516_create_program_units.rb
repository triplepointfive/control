class CreateProgramUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :program_units do |t|
      t.integer :project_id
      t.string :title
      t.string :project_name
      t.date :development_start_date
      t.date :planned_completion_date
      t.date :actual_end_date
      t.integer :executor_id, foreign_key: true
      t.string :executors
      t.integer :machine_time
    end
  end
end
