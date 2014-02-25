class CustomersController < ApplicationController
 before_action :signed_in_customer, only: [:edit, :update, :show]
 before_action :correct_customer,   only: [:edit, :update, :show]

  def show
    @customer = current_customer
    @assets = current_customer.assets
  end

  def new
   @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
     sign_in @customer
     redirect_to @customer
    else
     render 'new'
    end
  end

  def edit
  end

  def update
    if @customer.update_attributes(updated_params)
      flash[:success] = "Profile updated"
      redirect_to edit_customer_path(@customer)
    else
      render 'edit'
    end
  end

  private
    def customer_params
      params.require(:customer).permit(:username,:email,:password,:password_confirmation)
    end

    def updated_params
      params.require(:customer).permit(:password,:password_confirmation,:first_name,:last_name,:phone,:sh_address1,:sh_address2,:sh_city,:sh_state,:sh_zipcode,:bi_address1,:bi_address2,:bi_city,:bi_state,:bi_zipcode)
    end

end