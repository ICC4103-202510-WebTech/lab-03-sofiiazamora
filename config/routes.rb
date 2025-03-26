Rails.application.routes.draw do
  root "main#home"
  get "home", to:"main#home"
  get "about", to: "main#about"
  get "contact", to: "main#contact"
  post "contact", to: "main#submit_contact"
end
