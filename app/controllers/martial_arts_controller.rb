class MartialArtsController < ApplicationController
	before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @martial_arts = MartialArt.order('id DESC').all
  end

  def search
    @search = params[:query]
    @martial_arts = MartialArt.search(@search)
    @no_results = !@martial_art
  end

def new
    @martial_art = MartialArt.new(user: current_user) 
  end

#def new
    #@story = Story.new user_id: current_user.id
    #@story = current_user.stories.new
  #end

  def create
    @martial_art = MartialArt.new(parameters.merge(user: current_user))
    if @martial_art.valid? && @martial_art.save!
      flash[:info] = 'Great!!! Martial Art added'
      redirect_to root_path
    else
      render :new
    end
    flash[:error] = "You have errors"
  end

  private

  def parameters
    params.require(:martial_art).permit(:name, :description)
  end
    
end

  


