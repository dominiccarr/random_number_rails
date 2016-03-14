# /random?upper=100

class RandomController < ApplicationController
 
  def get
    upper = params[:upper].to_i
    @random = rand(upper)
  end
  
end
