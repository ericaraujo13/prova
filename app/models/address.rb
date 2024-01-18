class Address < ApplicationRecord  
  validates :neighborhood, :public_place, :state, :city, presence: true
  validates :zip, presence: true, format: { with: /([0-9]{5})-([0-9]{3})/ }
  validates :ibge_code, format: { with: /\A[0-9]{7}\z/ }
end
