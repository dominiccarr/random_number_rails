class RandomController < ApplicationController
 
 # /random?upper=100
  def get_random_number
    upper = params[:upper].to_i
    @random = rand(upper)
    
    respond_to do |format|
      format.html 
      format.json { render :json => @random }
    end

  end
  
end
