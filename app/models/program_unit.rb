class ProgramUnit < ApplicationRecord
  belongs_to :project
  belongs_to :executor
end
