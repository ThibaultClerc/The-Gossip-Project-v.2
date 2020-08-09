class LikesController < ApplicationController
  def new
  end

  def create
    @user = current_user.id
    @gossip = params[:gossip_id]
    likes = {liker_id: @user, gossip_id: @gossip}
    @like = Like.new(likes)
    @like.save!
    if @like.save
      redirect_to gossips_path
    else
      render '/gossips'
    end
  end

  def destroy
    get_like_by_user(current_user).destroy
    redirect_to gossips_path
  end

  private

  def like_params
    params.require(:like).permit(:gossip_id, :liker_id)
end
