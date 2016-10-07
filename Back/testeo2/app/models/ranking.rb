class Ranking < ApplicationRecord
  belongs_to :movie  
  validates :boolean_field_name, inclusion: { in: [1,2,3,4,5] }
end
