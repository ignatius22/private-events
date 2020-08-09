class Event < ApplicationRecord
    has_many :users, foreign_key: :creator_id
    belongs_to :creator, class_name: "User"
end
