class Reservation < ApplicationRecord
  validates :user_name, :time, :menu_name, presence: true
  # validate :time,
  validates :menu_name, length: { maximum: 100 }
end
