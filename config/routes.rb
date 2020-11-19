Rails.application.routes.draw do
  root to: "gardens#index"
  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: [] do
    resources :plant_tags, only: [:new, :create]
  end


  resources :plants, only: [:destroy]

end

# new -> to be able render a form page
# create -> to post the form data and acctually creates the object


# DAY 2
# GENERATE THE TAG MODEL
# GENERATE THE MODEL THAT WILL BE USED TO JOIN PLANTS AND TAGS
# ADD VALIDATIONS AND ASSOCIATIONS
# TEST OUR MODELSrails


# FOLLOW THE FLOW ! ! !
# ROUTES -> CONTROLLER -> VIEW


# 1- Create Rails Project (+ front end setup)
# 2- Generated the model
# 3- Run the migration
# 4- Add some validation
# 5- Create seed
# 6- Used banner template for front-end (copied html + scss)
# 7- Create second model -> plants (rails g model Plant garden:references name image_url)
# 8- Add validation to Plant model
# 9- Add has_many and dependent destroy to Garden model
# 10- Create plants_controller (rails g controller plants)
# 11- Create route to plants#create action
# 12- Code the action (create) in our controller
# 13- Created our simple_form_for at gardens#show page
# 14- Instanciated a Plant.new at gardens#show method
# 15- Added scss + html to show card grid
# 16- Add destroy route for plants
# 17- Code destroy action at plants#controller
# 18- Create the destroy button on gardens#show page
