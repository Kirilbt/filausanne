class ServiceCommodity < ApplicationRecord
  belongs_to :commodity
  belongs_to :service
end
