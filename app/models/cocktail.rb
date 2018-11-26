class Cocktail < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    mount_uploader :photo, PhotoUploader
    has_many :reviews, dependent: :destroy
end
    # has_many :reviews, dependent: :destroy
