class Resume < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :attachment, presence: true

  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

  belongs_to :user
  belongs_to :job
end
