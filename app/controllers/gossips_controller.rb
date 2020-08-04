class GossipsController < ApplicationController
  def new
  end

  def create
    @gossip = Gossip.new(title: params[:gossip_title], content: params[:gossip_content], user_id: 11) # avec xxx qui sont les données obtenues à partir du formulaire
    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to "/" # si ça marche, il redirige vers la page d'index du site
    else
      render "/gossips/new"# sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end
end
