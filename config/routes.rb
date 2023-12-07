Rails.application.routes.draw do
  # get / static_pages/home => static_pages#home
  # パス
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  # get 'users/new'

  get  "/help",    to: "static_pages#help"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"

  # 「#」の時はコントローラーの指定
  # コントローラー#アクション
  root 'static_pages#home'
end
