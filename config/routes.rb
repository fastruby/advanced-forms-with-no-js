Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "forms#index"

  scope controller: :forms do
    get "multiple_buttons", action: :multiple_buttons
    post "multiple_buttons", action: :multiple_buttons_submitted
    get "multiple_actions", action: :multiple_actions
    post "update_multiple_actions", action: :multiple_actions_submitted_archive
    post "multiple_actions_delete", action: :multiple_actions_submitted_delete
    get "elements_outside", action: :elements_outside
    post "elements_outside", action: :elements_outside_submitted
    get "multiple_steps", action: :multiple_steps
    post "multiple_steps", action: :multiple_steps_submitted
  end
end
