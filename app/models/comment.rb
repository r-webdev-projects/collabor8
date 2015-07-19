class Comment < ActiveRecord::Base
	validates :user_id, presence: true
  belongs_to :idea
  belongs_to :author, class_name: User, foreign_key: :author_id
  belongs_to :user
end
