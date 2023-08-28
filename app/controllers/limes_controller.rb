class LimesController < ApplicationController
  before_action :set_lime, only: %i[ show edit update destroy ]

  # GET /limes or /limes.json
  def index
    @limes = Lime.all
  end

  # GET /limes/1 or /limes/1.json
  def show
  end

  # GET /limes/new
  def new
    @lime = Lime.new
  end

  # GET /limes/1/edit
  def edit
  end

  # POST /limes or /limes.json
  def create
    @lime = Lime.new(lime_params)

    respond_to do |format|
      if @lime.save
        format.html { redirect_to lime_url(@lime), notice: "Lime was successfully created." }
        format.json { render :show, status: :created, location: @lime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /limes/1 or /limes/1.json
  def update
    respond_to do |format|
      if @lime.update(lime_params)
        format.html { redirect_to lime_url(@lime), notice: "Lime was successfully updated." }
        format.json { render :show, status: :ok, location: @lime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /limes/1 or /limes/1.json
  def destroy
    @lime.destroy

    respond_to do |format|
      format.html { redirect_to limes_url, notice: "Lime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lime
      @lime = Lime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lime_params
      params.require(:lime).permit(:sample_id, :weight, :woodruff, :ph1, :ph2, :ph3)
    end
end
