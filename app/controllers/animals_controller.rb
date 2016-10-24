class AnimalsController < ApplicationController

        before_action :authorise

        def index
          @all_animals = Animal.all

          if params[:search].present?
            @search_text="%#{params[:search]}%"
            @animals = @all_animals.where("lower(species) LIKE ?",  @search_text.downcase).order("created_at DESC")
          else
            @animals = @all_animals.order('created_at DESC')
          end

          if params[:distance].present? && params[:area].present?
            distance = params[:distance]
            area = params[:area]
            @animals = @animals.near(area, distance.to_i, :order => :address)
          end
        end

        def new
          @animal = Animal.new
        end
        def create
          # This is the magic stuff that will let us upload an image to Cloudinary when creating a new animal.
          animal = Animal.new(animal_params)
          params[:animal][:image].each do |photo|
            req = Cloudinary::Uploader.upload(photo)
            animal.images << req["url"]
          end
          animal.save
          @current_user.animals << animal
          redirect_to animal
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
          @animal = Animal.find(params[:id])

          @comment = Comment.new
        end

        def destroy
        animal = Animal.find params[:id]
        animal.destroy
        redirect_to animals_path
        end

        private
        def animal_params
          params.require(:animal).permit(:species, :breed, :sex, :dob, :description, :price, :user_id,:longitude, :latitude, :address)
        end
end
