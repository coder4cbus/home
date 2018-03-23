
# class Users::SessionsController < Devise::SessionsController

class SessionsController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

  def home
  end

  # def username = User.find(params[:username])
  # end
end
#eau copied from previous version of app
# class SessionsController < ApplicationController
#
#   def new
#     redirect_to new_user_path
#     # @user = User.new
#   end


  # def create
  #   user = User.find_by(username: session_params[:username])
  #   if user
  #     if user.authenticate(session_params[:password])
  #     session[:user_id] = user.id
  #     redirect_to user_path(user)
  #     else
  #     flash[:errors] = ["Incorrect username/password"]
  #     redirect_to new_session_path
  #     end
  #   else
  #     flash[:errors] = ["Incorrect username/password"]
  #     redirect_to new_session_path
  #   end
  # end
  #
  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_path
  # end

  # def destroy
  #   Session.find(params[:id]).destroy
  #   redirect_to new_session_path
  # end

#   private
#
#       def session_params
#         params.require(:vet).permit(:username, :password)
#       end
#
#   end
#
#
# end
