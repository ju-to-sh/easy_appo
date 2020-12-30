class Reservation < ApplicationRecord
  validates :user_name, presence: true
  validates :time, presence: true
  validates :menu_name, length: { maximum: 100 }, presence: true
end
