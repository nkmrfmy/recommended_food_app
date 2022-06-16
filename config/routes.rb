# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'foods#index'
  # likesをfoodsにネストすることで,いいね！したい料理のidをparams[:post_id]で受け取れる
  # likesテーブルのidは必要ないので,resourceで定義
  resources :foods do
    resource :likes, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
