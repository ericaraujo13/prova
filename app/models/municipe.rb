class Municipe < ApplicationRecord

  enum status: { active: 0, inactive: 1 }

  validates :name, :birthday, :status, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
end
