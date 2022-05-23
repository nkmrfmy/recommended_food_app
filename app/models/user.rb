class User < ApplicationRecord
  has_many :food, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
