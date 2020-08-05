class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    # @gossip_of_user = Gossip.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
