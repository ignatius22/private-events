class User < ApplicationRecord
    has_many :events, foreign_key: :event_creator_id
    # has_many :authored_posts, through: :attendance
    # has_many :edited_posts, foreign_key: :editor_id, class_name: "Post"
end
