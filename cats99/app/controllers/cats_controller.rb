class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end
  
  def new
    @cat = Cat.new
    render :new
  end
  
  def create
    @cat = Cat.new(cat_params)
    if @cat
      @cat.save
    end
    redirect_to cats_url
  end
  
  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end
  
  def update
    @cat = Cat.find_by(id: params[:id])
    @cat.update_attributes(cat_params)
    #TODO
    redirect_to cats_url
  end
  
  private
  
  def cat_params
    params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
  end
  
end

