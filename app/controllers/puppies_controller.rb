class PuppiesController < ApplicationController

  def index 
    @puppies = Puppy.all
    #@puppies = current_user.puppies.all
  end 

  def new 
    @puppy = Puppy.new 
    @user = @puppy.build_user
  end

  def create 
    @puppy = current_user.puppies.create(puppy_params)
    if @puppy.save 
      redirect_to puppy_path(@puppy)
    else  
      binding.pry 
    end
  end

  def show 
    find_puppy
  end

  private 

  def puppy_params 
    params.require(:puppy).permit(:name, :breed, :location, :bio, :user_id)
  end

end
