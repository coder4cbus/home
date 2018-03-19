class UsersController < ApplicationController

  # before_filter :authenticate_user!

  # def home
  # end

  def new
    @user = User.new
  end

  def sign_out
      @user.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

#   def create
#     @user = User.new(params[:user])
#     if @user.save
#       flash[:notice] = "You signed up successfully"
#       flash[:color]= "valid"
#     else
#       flash[:notice] = "Form is invalid"
#       flash[:color]= "invalid"
#     end
#     render "new"
#   end
end
