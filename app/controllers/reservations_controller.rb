class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to root_path, notice: "予約を登録しました"
    else
      flash.now[:alert] = "予約登録に失敗しました"
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_name, :time, :menu_name)
  end
end
