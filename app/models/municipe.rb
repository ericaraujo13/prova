class Municipe < ApplicationRecord

  enum status: { active: 0, inactive: 1 }

  validates :name, :birthday, :status, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone, presence: true,
                    format: { with: /\A\+[0-9]+ \([0-9]{2,}\) [0-9]{5,}-[0-9]{4,}\z/ }

  validates :cns, presence: true,
                  format: { with: /\A[0-9]{15}\z/ }
end
