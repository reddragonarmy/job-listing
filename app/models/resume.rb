class Resume < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  belongs_to :user
  belongs_to :job
end
