# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'cocktails#index'
  # resources :cocktails do
  #   collection do
  #   end
  # end
  #   get '/cocktails/:id/add_ingredients', to: 'doses#add_ingredients'
  #   resources :ingredients do
  #     collection do
  #     end
  #   end
  #   resources :doses do
  #     collection do
  #     end
  #   end
root to: 'cocktails#index'
  resources :cocktails do
    resources :doses do
      resources :ingredients do
      end
    end
  end
end
