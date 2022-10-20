class Produkte < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
