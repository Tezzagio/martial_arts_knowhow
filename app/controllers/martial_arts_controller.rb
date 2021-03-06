class MartialArtsController < ApplicationController
	before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @martial_arts = MartialArt.all
  end

  def search
    @search = params[:query]
    @martial_arts = MartialArt.search(@search)
    @no_results = !@martial_art
  end

  def aikido
    @aikido= MartialArt.all
  end

  def brazillian_jui_jitsu
    @brazillian_jui_jitsu= MartialArt.all
  end

  def judo
    @judo= MartialArt.all
  end

  def jui_jitsu
    @jui_jitsu= MartialArt.all
  end

  def karate
    @karate = MartialArt.all
  end

  def krav_maga
    @krav_maga= MartialArt.all
  end

  def kung_fu
    @kung_fu = MartialArt.all
  end

  def muay_thai
    @muay_thai = MartialArt.all
  end

  def taekwondo
    @taekwondo = MartialArt.all
  end

  def thai_chi
    @thai_chi = MartialArt.all
  end

  def tang_soo_do
    @tang_soo_do = MartialArt.all
  end

  def add
    @martial_art = MartialArt.new
  end

  def create
  @martial_art = MartialArt.new(parameters)
  if @martial_art.valid?
    @martial_art.save
    flash[:info] = 'Your new Martial Art has now been added'
    return redirect_to root_path
  end

   flash[:error] = "You have errors"
  end

  def new
    @blog = Blog.new(user: current_user) 
  end

  def blog
      @blog = Blog.new(parameters)
      if @blog.valid?
        @blog.save
        flash[:info] = 'Excellent news! Blog created'
        return redirect_to root_path
    end

    flash[:error] = "You have errors"
  end

  #def show
    #@martial_art = MartialArt.find params[:id]
  #end

  #def comment
    #@martial_art = MartialArt.new user_id: current_user.id
    #@martial_art = current_user.comments.new
  #end

  
  private

  def parameters
    params.require(:martial_art).permit(:name, :description, :image)
    params.require(:blog).permit(:title, :description, :category_id)
  end
end
