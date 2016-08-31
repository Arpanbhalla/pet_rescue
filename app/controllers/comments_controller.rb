class CommentsController < ApplicationController
  def create
    @animal = Animal.find params[:animal_id]
    comment= Comment.create(comment_params)
    @animal.comments << comment
    redirect_to animal_path(@animal)
  end

  def edit
    @comment = @animal.comments.find params[:id]
  end

  private
     def comment_params
       params.require(:comment).permit(:body, :animal_id)
     end
end
