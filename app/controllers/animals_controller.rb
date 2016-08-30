class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def create

  end


  def edit
  end

  def new
  end

  def show
    @animal = Animal.find params[:id]
  end
end
