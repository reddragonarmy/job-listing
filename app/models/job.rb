class Job < ApplicationRecord
  validates :wage_upper_bound, numericality: { greater_than: :wage_lower_bound }
  validates :wage_lower_bound, numericality: { greater_than: 0.0 }
end
