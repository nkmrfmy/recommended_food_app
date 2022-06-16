# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :food
  # user_id,food_idが一意となるようバリデーションを追加
  validates :user_id, uniqueness: {
    scope: :food_id,
    message: 'は同じ投稿に2回以上いいねできません'
  }
end
