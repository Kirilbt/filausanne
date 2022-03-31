class Service < ApplicationRecord
  has_many :requests
  has_many :opening_hours

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  translates :description
  scope :eats, -> { where(type: 'Eat') }
  scope :sleeps, -> { where(type: 'Sleep') }
  scope :cares, -> { where(type: 'Care') }
end
