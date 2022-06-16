# frozen_string_literal: true

class User < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :likes, dependent: :destroy
  # user.liked_foodsでユーザーがいいね！している料理の一覧を取得できる
  has_many :liked_foods, through: :likes, source: :food
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
