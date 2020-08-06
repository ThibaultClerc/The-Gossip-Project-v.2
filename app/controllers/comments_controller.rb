class CommentsController < ApplicationController

  def index
  end
  
  def new
    @comment = Comment.new
  end


  def create
    @id = params[:id]
    @comment = Comment.create(content: params[:content], author_id: current_user.id, gossip_id: params[:gossip_id])
    redirect_to gossip_path(params[:gossip_id])
    @comment
  end

  
  def destroy
  end

  private

  # def comment_params
  #   params.require(:comment).permit(:content)
  # end
  
end
