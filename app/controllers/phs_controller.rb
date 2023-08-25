class PhsController < ApplicationController
  before_action :set_ph, only: %i[ show edit update destroy ]

  # GET /phs or /phs.json
  def index
    @phs = Ph.all
  end

  # GET /phs/1 or /phs/1.json
  def show
  end

  # GET /phs/new
  def new
    @ph = Ph.new
  end

  # GET /phs/1/edit
  def edit
  end

  # POST /phs or /phs.json
  def create
    @ph = Ph.new(ph_params)

    respond_to do |format|
      if @ph.save
        format.html { redirect_to ph_url(@ph), notice: "Ph was successfully created." }
        format.json { render :show, status: :created, location: @ph }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phs/1 or /phs/1.json
  def update
    respond_to do |format|
      if @ph.update(ph_params)
        format.html { redirect_to ph_url(@ph), notice: "Ph was successfully updated." }
        format.json { render :show, status: :ok, location: @ph }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phs/1 or /phs/1.json
  def destroy
    @ph.destroy

    respond_to do |format|
      format.html { redirect_to phs_url, notice: "Ph was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ph
      @ph = Ph.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ph_params
      params.require(:ph).permit(:sample_id, :weight, :or, :ph1, :ph2, :ph3)
    end
end
