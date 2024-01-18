class Municipe < ApplicationRecord
  searchkick

  has_one :address
  accepts_nested_attributes_for :address, allow_destroy: true

  enum status: { inactive: 0, active: 1 }
  
  has_one_attached :photo do |attachable|
    attachable.variant :large,  resize_to_fit: [300, 300]
    attachable.variant :medium, resize_to_fit: [160, 160]
    attachable.variant :small,  resize_to_fit: [80, 80]
    attachable.variant :mini,   resize_to_fit: [30, 30]
  end

  validates :name, :birthday, :status, presence: true
  validates :birthday, not_in_future: true
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone, presence: true,
                    format: { with: /\A\+[0-9]+ [0-9]{2,} [0-9]{5,}-[0-9]{4,}\z/ }

  validates :cns, presence: true,
                  format: { with: /\A[0-9]{15}\z/ }

end
