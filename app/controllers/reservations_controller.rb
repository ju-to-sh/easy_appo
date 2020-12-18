class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    Reservation.create(reservation_params)
    redirect_to root_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_name, :menu_name)
  end
end
