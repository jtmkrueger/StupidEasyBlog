ArlissNancy::Application.routes.draw do
  resources :posts

  match 'photos', :to => 'posts#photos', :as => "photos"
  match 'songs', :to => 'posts#songs', :as => "songs"
  match 'news', :to => 'posts#news', :as => "news"
  match 'admin', :to => 'posts#admin', :as => "admin"

  root :to => 'posts#index'

end
