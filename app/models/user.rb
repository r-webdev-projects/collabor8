class User < ActiveRecord::Base 
  
  validates :first_name, presence: true, length: { in: 3..24 } #totally arbitrary upper limit
  has_many :ideas
  has_many :comments, foreign_key: :author_id # once comments get implemented
  
  
  #devise stuff below
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  #add :confirmable if you want to confirm email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end
