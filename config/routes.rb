Rails.application.routes.draw do
  
  get 'random' => 'random#get_random_number'

end
