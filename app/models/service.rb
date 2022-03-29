class Service < ApplicationRecord
  has_many :requests

  scope :eats, -> { where(type: 'Eat') }
  scope :sleeps, -> { where(type: 'Sleep') }
  scope :cares, -> { where(type: 'Care') }
end
