class CustomersController < ApplicationController
	before_action :set_customer, only: [:show, :edit, :update, :destroy]

def index
	@customers = Customer.all
end

def show

end

def new
	@customer = Customer.new
  @customer.customer_number = @customer.id 
end


# POST /widgets
  # POST /widgets.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_number, :customer_name, :contact_name, :bill_attention, :invoice_type, :need_to_work)
    end

end
