class Request < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :start_date, :end_date, presence: true
  validate :start_date_after_today?, :end_date_after_start_date?

  private

  def start_date_after_today?
    if start_date? && start_date < Date.today
      errors.add :start_date, I18n.t('request.error_start_date')
    end
  end

  def end_date_after_start_date?
    if end_date? && start_date? && end_date < start_date
      errors.add :end_date, I18n.t('request.error_end_date')
    end
  end
end
