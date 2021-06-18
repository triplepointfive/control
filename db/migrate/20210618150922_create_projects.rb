class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.decimal :funding_volume, precision: 11, scale: 2
      t.string :research_supervisor
      t.date :start_development
      t.date :planned_end_date
      t.string :customer
    end
  end
end
