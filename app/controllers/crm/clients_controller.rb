class Crm::ClientsController < ApplicationController
  before_action :set_crm_client, only: [:show, :edit, :update, :destroy]

  # GET /crm/clients
  # GET /crm/clients.json
  def index
    @crm_clients = Crm::Client.all
  end

  # GET /crm/clients/1
  # GET /crm/clients/1.json
  def show
  end

  # GET /crm/clients/new
  def new
    @crm_client = Crm::Client.new
  end

  # GET /crm/clients/1/edit
  def edit
  end

  # POST /crm/clients
  # POST /crm/clients.json
  def create
    @crm_client = Crm::Client.new(crm_client_params)

    respond_to do |format|
      if @crm_client.save
        format.html { redirect_to @crm_client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @crm_client }
      else
        format.html { render :new }
        format.json { render json: @crm_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crm/clients/1
  # PATCH/PUT /crm/clients/1.json
  def update
    respond_to do |format|
      if @crm_client.update(crm_client_params)
        format.html { redirect_to @crm_client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @crm_client }
      else
        format.html { render :edit }
        format.json { render json: @crm_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crm/clients/1
  # DELETE /crm/clients/1.json
  def destroy
    @crm_client.destroy
    respond_to do |format|
      format.html { redirect_to crm_clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crm_client
      @crm_client = Crm::Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crm_client_params
      params.require(:crm_client).permit(:client_company_id, :title, :first_name, :last_name, :email, :phone_number, :mobile_number, :branch_location, :contact_level, :industry)
    end
end
