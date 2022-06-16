# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
    # user_idとfood_idの組と同じ組を複数保存できない(ユニーク制約)
    add_index :likes, %i[user_id food_id], unique: true
  end
end
