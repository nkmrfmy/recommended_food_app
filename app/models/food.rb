# frozen_string_literal: true

class Food < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :name, presence: true

  mount_uploader :image, ImageUploader
end
