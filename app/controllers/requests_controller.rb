class RequestsController < ApplicationController
 
  before_action :set_request, only: %i[ show edit update destroy report]
  layout false, only: [:report]

  add_breadcrumb "Home", :root_path
  

  # GET /requests or /requests.json
  def index
    add_breadcrumb "Request", :requests_path
    @q = Request.ransack(params[:q])
    @requests = @q.result().order(:id).page(params[:page])
  end

  # GET /requests/1 or /requests/1.json
  def show
    add_breadcrumb "Customer", :customers_path
    add_breadcrumb "#{@request.customer.display}", @request.customer
    add_breadcrumb "#{@request.code}"
  end

  # GET /requests/new
  def new
    add_breadcrumb "New"
    @channels= ['phone', 'email']
    @request = Request.new    
  end

  # GET /requests/1/report
  def report
    
  end

  # GET /requests/1/edit
  def edit
    add_breadcrumb "Customer", :customers_path
    add_breadcrumb "#{@request.customer.display}", @request.customer
    add_breadcrumb "#{@request.code}"
    @channels= ['phone', 'email']
  end

  # POST /requests or /requests.json
  def create            
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to request_url(@request), notice: "Request was successfully created." }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1 or /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        #format.html { redirect_to request_url(@request), notice: "Request was successfully updated." }
        #format.json { render :show, status: :ok, location: @request }
        redirect_to requests_path
        return
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end 

  # DELETE /requests/1 or /requests/1.json
  def destroy
    @request.destroy

    respond_to do |format|
      format.html { redirect_to requests_url, notice: "Request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:customer_id, :receive, :ph, :lime, :om, :p, :k, :channel, :remark, samples_attributes: [:id, :_destroy, :detail, :location, :plant])
    end
end
