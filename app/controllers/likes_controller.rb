class LikesController < ApplicationController
  def new
  end

  def create
    @like = Like.find(params[:id])
  end

  def destroy
  end
end
