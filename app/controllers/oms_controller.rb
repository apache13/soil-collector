class OmsController < ApplicationController
  before_action :set_om, only: %i[ show edit update destroy ]

  # GET /oms or /oms.json
  def index
    @oms = Om.all
  end

  # GET /oms/1 or /oms/1.json
  def show
  end

  # GET /oms/new
  def new
    @om = Om.new
  end

  # GET /oms/1/edit
  def edit
  end

  # POST /oms or /oms.json
  def create
    @om = Om.new(om_params)

    respond_to do |format|
      if @om.save
        format.html { redirect_to om_url(@om), notice: "Om was successfully created." }
        format.json { render :show, status: :created, location: @om }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @om.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oms/1 or /oms/1.json
  def update
    respond_to do |format|
      if @om.update(om_params)
        format.html { redirect_to om_url(@om), notice: "Om was successfully updated." }
        format.json { render :show, status: :ok, location: @om }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @om.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oms/1 or /oms/1.json
  def destroy
    @om.destroy

    respond_to do |format|
      format.html { redirect_to oms_url, notice: "Om was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_om
      @om = Om.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def om_params
      params.require(:om).permit(:sample_id, :weight, :K2CrO7_V1, :K2CrO7_N1, :FeSO4_1, :FeSO4_2, :FeSO4_3, :FeSO4_N2, :OC, :OM)
    end
end
