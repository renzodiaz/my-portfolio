Rails.application.routes.draw do
  root to: 'surface/pages#home'

  scope module: 'surface' do
    get '/about', to: 'pages#about', as: 'surface_about'
    get '/work', to: 'pages#work', as: 'surface_work'
    get '/blog', to: 'pages#blog', as: 'surface_blog'
    get '/contact', to: 'pages#contact', as: 'surface_contact'
  end

  namespace :admins  do 
    get '/dashboard', to: 'base#overview'
    resources :blogs
    resources :works
  end
end
