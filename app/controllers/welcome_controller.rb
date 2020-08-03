class WelcomeController < ApplicationController
  def welcome_message
    puts "Voici ce que contient params (depuis le controller): #{params[:first_name]}"
  end
end
