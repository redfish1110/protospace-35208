class Prototype < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user


  validates :image,        presence: true
  validates :title,        presence: true
  validates :catch_copy,   presence: true
  validates :concept,      presence: true
  
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
