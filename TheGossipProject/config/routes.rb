Rails.application.routes.draw do
  root 'statique#accueil'
  get '/team' , to: 'statique#team'
  get '/contact' , to: 'statique#contact'
end