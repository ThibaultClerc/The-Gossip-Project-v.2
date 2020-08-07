class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    # @gossip_of_user = Gossip.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    
    @user = User.create(user_params)
    # @city = City.create(city_name: params[:city], zip_code: 94350)
    # @user.city_id = @city.id
    # @user.user = User.find_by(id: session[:user_id])
    if @user.save
       flash[:success] = "Merci pour ton inscription !"
        redirect_to gossips_path
    else
      
      render :new
      flash[:danger] = "Relis-toi bien, il y a une erreur dans ton formulaire d'inscription..."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    # params[:city] = 1
    params.require(:user).permit(:first_name, :last_name, :age, :description, :email, :password, :password_confirmation)
  end

end
