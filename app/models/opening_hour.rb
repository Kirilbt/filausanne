class OpeningHour < ApplicationRecord
  belongs_to :service
  translates :day
end
