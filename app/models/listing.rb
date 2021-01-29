class Listing < ApplicationRecord
    belongs_to :user
    has_many :users, through: :bookings
    has_many :bookings
    has_one_attached :photo
    # has_many_attached :photos

    SIZE = ["S", "M", "L", "XL", "ХХL"]
    CATEGORY = ["Фармерки", "Панталони","Кратки Панталнои","Хеланки","Сукња","Кошула","Топ","Палто","Фустан","Блуза","Сако","Комплет","Тренерки"]
    validates :title, presence: true
    validates :category,presence: true
    validates :price, presence: true
    validates :size, presence: true
    validates :description, presence: true
    validates :size, inclusion: { in: SIZE, message: "Невалидна категорија" }
    validates :category, inclusion: { in: CATEGORY, message: "Невалидна категорија" }


end
