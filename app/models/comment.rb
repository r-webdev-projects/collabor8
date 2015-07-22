class Comment < ActiveRecord::Base
	belongs_to :user
	# validates :user_id, presence: true
  belongs_to :idea
  belongs_to :author, class_name: User, foreign_key: :author_id
end
