class Service < ApplicationRecord
  has_many :requests
  has_many :opening_hours

  scope :eats, -> { where(type: 'Eat') }
  scope :sleeps, -> { where(type: 'Sleep') }
  scope :cares, -> { where(type: 'Care') }
end
