class Activity < ApplicationRecord
    belongs_to :author, class_name: 'User'
    
    default_scope -> { order(created_at: :desc) }
    scope :ascending, -> { order(name: :asc) }
end
