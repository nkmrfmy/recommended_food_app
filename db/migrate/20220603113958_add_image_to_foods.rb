# frozen_string_literal: true

class AddImageToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :image, :string
  end
end
