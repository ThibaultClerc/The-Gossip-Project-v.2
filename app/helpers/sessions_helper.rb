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
end
