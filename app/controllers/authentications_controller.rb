class AuthenticationsController < ApplicationController
    
    def index
      @authentications = current_user.authentications if current_user
    end
    
    def create
      render :text => request.env["omniauth.auth"].to_yaml
      omniauth = request.env["omniauth.auth"]
      authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
      if authentication        
        # flash[:notice] = "Signed in successfully."
        # sign_in_and_redirect(:user, authentication.user)
      elsif current_user
        # current_user.apply_omniauth(omniauth)
        # flash[:notice] = "Authentication successful."
        # redirect_to authentications_url
        # # redirect_to user_session_path
      else 
        user = User.new(params[:user])
        user.apply_omniauth(omniauth)
        if user.save
          flash[:notice] = "Signed in successfully."
          sign_in_and_redirect(:user, user)
        else
          session[:omniauth] = omniauth.except('extra')
          redirect_to new_user_registration_url
        end
      end     
      
    end
    
    def destroy
      @authentication = current_user.authentications.find(params[:id])
      @authentication.destroy
      flash[:notice] = "Successfully destroyed authentication."
      redirect_to authentications_url
    end
  

end