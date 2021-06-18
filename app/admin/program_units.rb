ActiveAdmin.register ProgramUnit do
  permit_params *%i[project_id title project_name development_start_date planned_completion_date actual_end_date executor_id executors machine_time]

  filter :id
  filter :project_id
  filter :title
  filter :project_name
  filter :development_start_date
  filter :planned_completion_date
  filter :actual_end_date
  filter :executor_id
  filter :executors
  filter :machine_time

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :project
      f.input :title
      f.input :project_name
      f.input :development_start_date, as: :date_picker
      f.input :planned_completion_date, as: :date_picker
      f.input :actual_end_date, as: :date_picker
      f.input :executor
      f.input :executors
      f.input :machine_time
    end

    f.actions
  end
end
