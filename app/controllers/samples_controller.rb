class SamplesController < ApplicationController
  before_action :set_sample, only: %i[ show edit update destroy ]

  add_breadcrumb "Home", :root_path  

  # GET /samples or /samples.json
  def index
    add_breadcrumb "Sample", :samples_path
    @q = Sample.ransack(params[:q])
    @samples = @q.result().order(:id).page(params[:page])
  end

  # GET /samples/1 or /samples/1.json
  def show    
    add_breadcrumb "Customer", :customers_path
    add_breadcrumb "#{@sample.request.customer.display}", @sample.request.customer
    add_breadcrumb "#{@sample.request.code}", @sample.request
    add_breadcrumb "#{@sample.code}"
  end

  # GET /samples/new
  def new
    add_breadcrumb "New"
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
    add_breadcrumb "Customer", :customers_path
    add_breadcrumb "#{@sample.request.customer.display}", @sample.request.customer
    add_breadcrumb "#{@sample.request.code}", @sample.request
    add_breadcrumb "#{@sample.code}"
  end

  # POST /samples or /samples.json
  def create
    @sample = Sample.new(sample_params)

    respond_to do |format|
      if @sample.save
        format.html { redirect_to sample_url(@sample), notice: "Sample was successfully created." }
        format.json { render :show, status: :created, location: @sample }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samples/1 or /samples/1.json
  def update
    respond_to do |format|
      if @sample.update(sample_params)
        # format.html { redirect_to sample_url(@sample), notice: "Sample was successfully updated." }
        # format.json { render :show, status: :ok, location: @sample }
        redirect_to samples_path
        return
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samples/1 or /samples/1.json
  def destroy
    @sample.destroy

    respond_to do |format|
      format.html { redirect_to samples_url, notice: "Sample was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample
      @sample = Sample.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sample_params
      params.require(:sample).permit(:request_id, :code, :detail, :location, :plant, ph_attributes: [:id, :_destroy, :weight, :or, :ph1, :ph2, :ph3], lime_attributes: [:id, :_destroy, :weight, :woodruff, :ph1, :ph2, :ph3], om_attributes: [:id, :_destroy, :weight, :K2CrO7_V1, :K2CrO7_N1, :FeSO4_1, :FeSO4_2, :FeSO4_3, :FeSO4_N2, :OC, :OM])
    end
end
