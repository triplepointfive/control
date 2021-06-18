class Executor < ApplicationRecord
  belongs_to :institute
  has_many :program_unit
end
