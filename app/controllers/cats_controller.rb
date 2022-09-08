class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render 'cats/index'
  end
  def show
    @cat = Cat.find_by(id: params[:id])
    render 'cats/show'
  end
  def new    
    render 'cats/new'
  end

  def create
    cat = Cat.new(
      name: params[:name],
      breed: params[:breed],
      image_url: params[:image_url],
      age: params[:age]
    )
    cat.save
    redirect_to "/cats"
  end
  def edit
    @cat = Cat.find_by(id: params[:id])
    render 'cats/edit'
  end
  def update
    cat = Cat.find_by(id: params[:id])
    cat.breed = params[:breed]
    cat.name = params[:name]
    cat.image_url = params[:image_url]
    cat.age = params[:age]
    cat.save

    redirect_to "/cats"
  end
end
