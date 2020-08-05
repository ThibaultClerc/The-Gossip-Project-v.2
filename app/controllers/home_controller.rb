class HomeController < ApplicationController
  def welcoming
<<<<<<< HEAD
    @gossips = Gossip.all
=======
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 11)
    puts "Le controller Application est bien allé piocher dans la BDD"
>>>>>>> origin
  end
end 