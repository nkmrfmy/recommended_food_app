# frozen_string_literal: true

class Food < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  # food.liked_usersでfoodをいいね！しているユーザーの一覧を取得できる
  has_many :liked_users, through: :likes, source: :user
  validates :name, presence: true

  mount_uploader :image, ImageUploader

  # foodをuserがいいねしているときはtrue,していないときはfalse
  def liked_by?(user)
    likes.any? { |like| like.user_id == user.id }
  end
end
