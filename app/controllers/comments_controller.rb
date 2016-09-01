class CommentsController < ApplicationController



  def create
    @animal = Animal.find params[:animal_id]
    comment= Comment.create(comment_params)
    @animal.comments << comment
    @current_user.comments << comment
    redirect_to animal_path(@animal)
  end

  def edit
    @comment = @animal.comments.find params[:id]
  end

  def destroy
    comments = Comment.find params[:id]
    comment.destroy
    redirect_to animals_path
  end



  private
     def comment_params
       params.require(:comment).permit(:body, :animal_id, :user_id)
     end
end
