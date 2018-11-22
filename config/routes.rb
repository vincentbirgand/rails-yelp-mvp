Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end

# Rails.application.routes.draw do
#   resources :restaurants do
#     collection do                       # collection => no restaurant id in URL
#       get 'top', to: "restaurants#top"  # RestaurantsController#top
#     end
#   end
# end
