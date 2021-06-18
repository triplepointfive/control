ActiveAdmin.register Executor do
  permit_params *%i[id institute_id institute_department employee_service_number full_name position salary work_experience address]

  filter :id
  filter :institute_id
  filter :institute_department
  filter :employee_service_number
  filter :full_name
  filter :position
  filter :salary
  filter :work_experience
  filter :address
end
