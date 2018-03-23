class RdvmsController < ApplicationController

  before_filter :authenticate_user!

    #eau copied below from previous version
  # class RdvmsController < ApplicationController
  #   before_action :set_rdvm, only: [:show, :edit, :update, :destroy]

    # GET /rdvms
    # GET /rdvms.json
    # def index
    #   @rdvms = Rdvm.all
    # end

    # GET /rdvms/1
    # GET /rdvms/1.json
    # def show
    # end

    # GET /rdvms/new
    # def new
    #   @rdvm = Rdvm.new
    # end

    # GET /rdvms/1/edit
    # def edit
    # end

    # POST /rdvms
    # POST /rdvms.json
    # def create
    #   @rdvm = Rdvm.new(rdvm_params)
    #
    #   respond_to do |format|
    #     if @rdvm.save
    #       format.html { redirect_to @rdvm, notice: 'Rdvm was successfully created.' }
    #       format.json { render :show, status: :created, location: @rdvm }
    #     else
    #       format.html { render :new }
    #       format.json { render json: @rdvm.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end

    # PATCH/PUT /rdvms/1
    # PATCH/PUT /rdvms/1.json
    # def update
    #   respond_to do |format|
    #     if @rdvm.update(rdvm_params)
    #       format.html { redirect_to @rdvm, notice: 'Rdvm was successfully updated.' }
    #       format.json { render :show, status: :ok, location: @rdvm }
    #     else
    #       format.html { render :edit }
    #       format.json { render json: @rdvm.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end

    # DELETE /rdvms/1
    # DELETE /rdvms/1.json
    # def destroy
    #   @rdvm.destroy
    #   respond_to do |format|
    #     format.html { redirect_to rdvms_url, notice: 'Rdvm was successfully destroyed.' }
    #     format.json { head :no_content }
    #   end
    # end
    #
    # private
      # Use callbacks to share common setup or constraints between actions.
      # def set_rdvm
      #   @rdvm = Rdvm.find(params[:id])
      # end

      # Never trust parameters from the scary internet, only allow the white list through.
  #     def rdvm_params
  #       params.require(:rdvm).permit(:first_name, :last_name, :clinic_name, :clinic_address, :city, :state, :zip, :preffered_contact, :phone, :email, :vet_id)
  #     end
  # end
