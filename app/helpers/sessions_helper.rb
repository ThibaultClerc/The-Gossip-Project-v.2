module SessionsHelper
  def current_user
   User.find_by(id: session[:user_id])
  end

  def log_in(user)
   session[:user_id] = user.id
  end

  def is_logged_in?
    if session[:user_id] != nil
      true
    else
      false
    end
  end

  def current_user_liked_that?(gossip)
    gossip.is_liked_by?(current_user)
  end

  def get_like_of_current_user(gossip)
    gossip.get_like_by_user(current_user)
  end
end
