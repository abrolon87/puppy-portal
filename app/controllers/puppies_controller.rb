class PuppiesController < ApplicationController

  def new 
    @puppy = Puppy.new 
    
  end
end
