class OperativePlan < ApplicationRecord
  has_many :advances, dependent: :destroy
end
