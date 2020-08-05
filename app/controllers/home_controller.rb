class HomeController < ApplicationController
  def welcoming
    @gossips = Gossip.all
  end
end 