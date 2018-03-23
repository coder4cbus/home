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
#EAU coped from previous version
# class UsersController < ApplicationController
#   before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  # def index
  #   @users = users.all
  # end

  # GET /users/1
  # GET /users/1.json
  # def show
  # end

  # GET /users/new
  # def new
  #   @user = User.new
  # end

  # GET /users/1/edit
  # def edit
  # end

  # POST /users
  # POST /users.json
  # def create
  #   @user = User.new(user_params)
  #
  #   respond_to do |format|
  #     if @user.save
  #       # session[:vet_id] = @vet.id
  #       format.html { redirect_to @user, notice: 'Vet user was successfully created.' }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new }
  #       # format.html { render :vet_login}
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: 'Vet user was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url, notice: 'Vet user was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
#     def user_params
#       params.require(:user).permit(:first_name, :last_name, :address, :city, :state, :zip, :email, :phone, :crematory_name)
#     end
# end
# def vet_params
#   params.require(:vet).permit(:username, :password)
