Rails.application.routes.draw do
  root "alunos#index" # Define a rota principal para a ação index de "alunos".
  resources :alunos   # Cria todas as rotas RESTful para o recurso alunos.
end
