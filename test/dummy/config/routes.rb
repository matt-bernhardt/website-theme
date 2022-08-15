Rails.application.routes.draw do
  mount Website::Theme::Engine => "/website-theme"

  root 'static#index'
end
