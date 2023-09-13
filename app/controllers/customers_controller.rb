class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Customer", :customers_path

  # GET /customers or /customers.json
  def index    
    @q = Customer.ransack(params[:q])
    @customers = @q.result().order(:id).page(params[:page])    
  end

  # GET /customers/1 or /customers/1.json
  def show
    add_breadcrumb "#{@customer.display}"
    @channels= ['phone', 'email']
  end

  # GET /customers/new
  def new
    add_breadcrumb "New"
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit    
    add_breadcrumb "#{@customer.display}"
  end

  # POST /customers or /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_url(@customer), notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        #format.html { redirect_to customer_url(@customer), notice: "Customer was successfully updated." }
        #format.json { render :show, status: :ok, location: @customer }
        redirect_to customers_path
        return
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:code, :name, :phone, :email, :address, :remark, requests_attributes: [:id, :_destroy, :receive, :receipt, :channel, :remark, :ph, :lime, :om, :p, :k, :analyzed, :code])
      #params.require(:customer).permit(:code, :name, :phone, :email, :address, :remark)
    end
end
