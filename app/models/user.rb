class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_tags
  has_many :posts
  has_many :post_saved
  has_many :post_upvoted
  has_many :followers, class_name: "Contact", foreign_key: "follower_id"
  has_many :followings, class_name: "Contact", foreign_key: "following_id"

  has_one_attached :photo

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
