class Comment < ActiveRecord::Base
  belongs_to :idea
  belongs_to :author
  belongs_to :user
end
