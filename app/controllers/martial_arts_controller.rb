class MartialArtsController < ApplicationController
	before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @martial_arts = MartialArt.all
  end

  #def show
    #@martial_art = martial_art.find params[:id]
  #end

  def search
    @search = params[:query]
    @martial_arts = MartialArt.search(@search)
    @no_results = !@martial_art
  end

  #def new
    #@martial_art = MartialArt.new(user: current_user) 
  #end

 def new
    @martial_art = MartialArt.new user_id: current_user.id
    @martial_art = current_user.id@martial_art.new
  end

def create
    safe_martial_art_params = params.require(:comment).permit(:title, :description)
    @martial_art = current_user.martial_arts.new safe_martial_art_params.merge(:upvotes => 1)

    if @martial_art.save
      redirect_to @martial_art
    else
      render :new
    end

  #def create
    #@martial_art = MartialArt.new(parameters.merge(user: current_user))
    #if @martial_art.valid? && @martial_art.save!
      #flash[:info] = 'Your new Martial Art comment has now been added'
      #redirect_to root_path
    #else
      #render :new
    #end
    #flash[:error] = "An error has been encountered"
  end

  private

  def parameters
    params.require(:martial_art).permit(:name, :description)
  end
    
end
