class Group < ApplicationRecord
  belongs_to :user
  has_many :activities
  validates :name, presence: true, uniqueness: true
  default_scope -> { order(name: :asc) }
  mount_uploader :icon, IconUploader
end
