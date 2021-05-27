class Activity < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :group, optional: true
    has_and_belongs_to_many :groups
    default_scope -> { order(created_at: :desc) }
    scope :ascending, -> { order(name: :asc) }
    
end
