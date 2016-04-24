class PaymentsController < ApplicationController
  # before_action do_some_security_activity_available, only: [:new, :create]
  def index
  end

  def new
    @client_token = Braintree::ClientToken.generate
    @reservation = Reservation.find(params[:reservation_id])
    @payment = Payment.new
  end

  def create
    @reservation = Reservation.find(params[:reservation_id])
    nonce = params[:payment_method_nonce]
    render action: :new and return unless nonce
    result = Braintree::Transaction.sale(
      amount:  @reservation.total_price.to_i,
      payment_method_nonce: params[:payment_method_nonce]
    )
    byebug

    # reserve to save the transaction details into database 
    redirect_to reservations_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def generate_client_token
    Braintree::ClientToken.generate
  
  end

end
