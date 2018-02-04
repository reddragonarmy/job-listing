class Job < ApplicationRecord
  validates :wage_upper_bound, numericality: { greater_than: :wage_lower_bound }
  validates :wage_lower_bound, numericality: { greater_than: 0.0 }
  validates :title, presence: true
  validates :contact, presence: true

  has_many :resumes

  scope :recent, -> {order("created_at DESC")}
  scope :published, -> {where(is_hidden: false)}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
