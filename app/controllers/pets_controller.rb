class PetsController < ApplicationController

  before_filter :authenticate_user!
