# /primes?upper=1000&lower=10
require 'will_paginate/array'

class PrimesController < ApplicationController
    
    def index
        upper = params[:upper].to_i
        lower = params[:lower].to_i
        @nums = (lower..upper).to_a.select { |i| i.is_prime? }
        @nums = @nums.paginate(per_page: 10, page: params[:page])
        
        respond_to do |format|
            format.html
            format.json{
                render :json => @nums
            }
        end
    end
    
    def check
        @number = params[:number].to_i
        @is_prime = @number.is_prime?
    end
    
end
