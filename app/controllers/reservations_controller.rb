class ReservationsController < ApplicationController
  def new
    @logement = Logement.find(params[:logement_id])
    @reservation = Reservation.new
  end
  def create
     @reservation = Reservation.create!(reservation_params)

  end
  
  private

  def reservation_params
    params.require(:reservation).permit(:price)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
