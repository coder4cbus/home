class UsersController < ApplicationController

  # before_filter :authenticate_user!

  # def home
  # end

  def new
    @user = User.new
  end

  # def create
  #   @user = User.find(params[:id])
  #   if @user.save
  #     flash[:notice] = "You signed up successfully"
  #    flash[:color]= "valid"
  #   else @user !=
  #     current_user
  #     redirect_to root_path, :alert => "Access denied."
  #   end
  # end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def sign_out
      @user.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end


end
