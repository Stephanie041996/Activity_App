class User < ApplicationRecord
    has_many :activities, class_name: 'Activity', foreign_key: 'author_id'
    has_many :groups
    validates :name, presence: true, uniqueness: true

    def ungrouped_activities_from_user(current_user_id)
        Activity.includes(:author).where(group_id: nil).where(author_id: current_user_id)
    end
end
