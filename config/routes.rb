require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount Sidekiq::Web => '/sidekiq'  #na pratica nao monta ou monta com senha
  #foi montado apenas para teste e para didatica
end