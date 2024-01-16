class Municipe < ApplicationRecord
  has_one :address
  accepts_nested_attributes_for :address

  enum status: { active: 0, inactive: 1 }

  has_one_attached :photo do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
    attachable.variant :profile, resize_to_limit: [320, 320]
  end

  validates :name, :birthday, :status, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone, presence: true,
                    format: { with: /\A\+[0-9]+ [0-9]{2,} [0-9]{5,}-[0-9]{4,}\z/ }

  validates :cns, presence: true,
                  format: { with: /\A[0-9]{15}\z/ }
end
