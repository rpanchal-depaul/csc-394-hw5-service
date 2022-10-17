Rails.application.routes.draw do

  scope :admin do
    resources :course_enrollments
    resources :students
    resources :courses
  end

  scope :api, constraints: lambda { |req| req.format == :json } do
    resources :course_enrollments
    resources :students
    resources :courses
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
