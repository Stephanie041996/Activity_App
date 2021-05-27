class User < ApplicationRecord
    has_many :activities, class_name: 'Activity', foreign_key: 'author_id'
end
