class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])

  end

  def new
    @reservation = Reservation.new
    # @listing = Listing.find(params[:id])
  end

  def edit
  end

  def create
    
    @reservation = current_user.reservations.new(reservation_params)
    @listing = Listing.find(params[:reservation][:listing_id])
    @reservation.listing_id = @listing.id
    @reservation.total_price = @reservation.listing.price.to_i*(@reservation.end_date - @reservation.start_date)
    

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end


 private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date)
    end
end

