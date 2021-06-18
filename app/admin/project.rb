ActiveAdmin.register Project do
  permit_params :title, :title, :funding_volume, :research_supervisor, :start_development, :planned_end_date, :customer

  filter :id
  filter :title
  filter :funding_volume
  filter :research_supervisor
  filter :start_development
  filter :planned_end_date
  filter :customer

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :title
      f.input :funding_volume
      f.input :research_supervisor
      f.input :start_development, as: :date_picker
      f.input :planned_end_date, as: :date_picker
      f.input :customer
    end

    f.actions
  end
end
