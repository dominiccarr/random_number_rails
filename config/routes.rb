Rails.application.routes.draw do
  
  get 'random' => 'random#get'
  
  get 'primes' => 'primes#index'
  
  get 'check/:number' => 'primes#check'
  
end
