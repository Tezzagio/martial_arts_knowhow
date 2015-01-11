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

  def show
    @martial_art = MartialArt.find params[:id]
  end

  def comment
    @martial_art = MartialArt.new user_id: current_user.id
    @martial_art = current_user.comments.new
  end

def create
    safe_martial_art_params = params.require(:comment).permit(:name, :description)
    @martial_art = current_user.comments.new safe_martial_art_params.merge(:upvotes => 1)

    if @martial_art.save
      flash[:info] = 'Your new Martial Art comment has now been added'
      redirect_to @martial_art
    else
      render :new
    end

  private

  def parameters
    params.require(:martial_art).permit(:name, :description)
  end
 end
end
