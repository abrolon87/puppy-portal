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
      render :new
    end
  end

  def show 
    find_puppy
  end

  def edit 
    find_puppy
  end

  def update 
    find_puppy
    @puppy.update(puppy_params)
    redirect_to puppy_path(@puppy)
  end

  private 

  def puppy_params 
    params.require(:puppy).permit(:name, :breed, :location, :bio, :user_id)
  end

end
