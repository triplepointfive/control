ActiveAdmin.register Institute do
  permit_params :title

  filter :id
  filter :title
end
