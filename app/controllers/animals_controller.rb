class AnimalsController < ApplicationController

        before_action :authorise

        def index
          @animals = Animal.all
        end

        def new
          @animal = Animal.new
        end
        def create
          animal = Animal.create animal_params
          redirect_to animal # redirect_to "/works/#{work.id}"
        end

        def edit
          @animal = Animal.find params[:id]
        end

        def update
          animal = Animal.find params[:id]
          animal.update animal_params
          redirect_to animal
        end


        def show
          @animal = Animal.find params[:id]
          @comment = Comment.new
        end

        def destroy
        animal = Animal.find params[:id]
        animal.destroy
        redirect_to animal_path
        end

        private
        def animal_params
          params.require(:animal).permit(:species,:breed,:sex,:images,:dob,:description,:price,:user_id)
        end
end
