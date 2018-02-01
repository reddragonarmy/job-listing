class Job < ApplicationRecord
  validates :wage_upper_bound, numericality: { greater_than: :wage_lower_bound }
  validates :wage_lower_bound, numericality: { greater_than: 0.0 }
  validates :title, presence: true
  validates :contact, presence: true

  scope :recent, -> {order("updated_at DESC")}
end
