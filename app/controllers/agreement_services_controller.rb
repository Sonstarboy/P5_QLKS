class AgreementServicesController < ApplicationController
  before_action :set_agreement_service, only: [:show, :edit, :update, :destroy]

  # GET /agreement_services
  # GET /agreement_services.json
  def index
    @agreement_services = AgreementService.all
  end

  # GET /agreement_services/1
  # GET /agreement_services/1.json
  def show
  end

  # GET /agreement_services/new
  def new
    @agreement_service = AgreementService.new
  end

  # GET /agreement_services/1/edit
  def edit
  end

  # POST /agreement_services
  # POST /agreement_services.json
  def create
    @agreement_service = AgreementService.new(agreement_service_params)

    respond_to do |format|
      if @agreement_service.save
        format.html { redirect_to @agreement_service, notice: 'Agreement service was successfully created.' }
        format.json { render :show, status: :created, location: @agreement_service }
      else
        format.html { render :new }
        format.json { render json: @agreement_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agreement_services/1
  # PATCH/PUT /agreement_services/1.json
  def update
    respond_to do |format|
      if @agreement_service.update(agreement_service_params)
        format.html { redirect_to @agreement_service, notice: 'Agreement service was successfully updated.' }
        format.json { render :show, status: :ok, location: @agreement_service }
      else
        format.html { render :edit }
        format.json { render json: @agreement_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agreement_services/1
  # DELETE /agreement_services/1.json
  def destroy
    @agreement_service.destroy
    respond_to do |format|
      format.html { redirect_to agreement_services_url, notice: 'Agreement service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agreement_service
      @agreement_service = AgreementService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agreement_service_params
      params.require(:agreement_service).permit(:agreement_id, :service_id, :unit_price, :amount, :total_amount)
    end
end
