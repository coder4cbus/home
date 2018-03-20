
# class Users::SessionsController < Devise::SessionsController

class SessionsController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

  def home
  end

  # def username = User.find(params[:username])
  # end
end
