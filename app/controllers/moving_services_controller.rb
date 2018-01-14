class MovingServicesController < ApplicationController
  before_action :set_moving_service, only: [:show, :edit, :update, :destroy]

  # GET /moving_services
  # GET /moving_services.json
  def index
    @moving_services = MovingService.all
  end

  # GET /moving_services/1
  # GET /moving_services/1.json
  def show
  end

  # GET /moving_services/new
  def new
    @moving_service = MovingService.new
  end

  # GET /moving_services/1/edit
  def edit
  end

  # POST /moving_services
  # POST /moving_services.json
  def create
    @moving_service = MovingService.new(moving_service_params)

    respond_to do |format|
      if @moving_service.save
        format.html { redirect_to @moving_service, notice: 'Moving service was successfully created.' }
        format.json { render :show, status: :created, location: @moving_service }
      else
        format.html { render :new }
        format.json { render json: @moving_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moving_services/1
  # PATCH/PUT /moving_services/1.json
  def update
    respond_to do |format|
      if @moving_service.update(moving_service_params)
        format.html { redirect_to @moving_service, notice: 'Moving service was successfully updated.' }
        format.json { render :show, status: :ok, location: @moving_service }
      else
        format.html { render :edit }
        format.json { render json: @moving_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moving_services/1
  # DELETE /moving_services/1.json
  def destroy
    @moving_service.destroy
    respond_to do |format|
      format.html { redirect_to moving_services_url, notice: 'Moving service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moving_service
      @moving_service = MovingService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moving_service_params
      params.require(:moving_service).permit(:name, :last_name, :age, :email, :number, :items)
    end
end
