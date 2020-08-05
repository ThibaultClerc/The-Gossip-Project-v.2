class GossipsController < ApplicationController
  
  def index
      @gossips = Gossip.order(updated_at: :desc)
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = Gossip.find(params[:id]).user
  end

  def new
    @gossip = Category.new
  end

  def create
    @gossip = Gossip.create(gossip_params, user_id: 11) # avec xxx qui sont les données obtenues à partir du formulaire
    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
    else
      render :new# sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
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

end
