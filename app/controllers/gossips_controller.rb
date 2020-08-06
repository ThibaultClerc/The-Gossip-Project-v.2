class GossipsController < ApplicationController
  before_action :authenticate_user

  def index
      @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = Gossip.find(params[:id]).user

    @gossips_comments = Gossip.find(params[:id]).comments

    # @comment = Comment.new(comment_params)
  #   @comment.author_id = 11
  #   @comment.gossip_id = Gossip.find(params[:id]).id

  #   if @comment.save
  #     redirect_to gossip_path
  #   else
  #     render :show
  #   end
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.user_id = current_user.id
    if @gossip.save
      redirect_to gossips_path
    else
      render :new
    end
  end



  def edit
    @gossip = Gossip.find(params[:id])
    if current_user.id == @gossip.user.id
    else
    redirect_to gossips_path
    end
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end


  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

end
