FactoryBot.define do
  factory :address do
    zip { FFaker::AddressBR.zip_code }
    public_place { FFaker::AddressBr.street }
    complement { FFaker::AddressBr.complement }
    neighborhood { FFaker::AddressBr.neighborhood }
    city { FFaker::AddressBr.city }
    state { FFaker::AddressBr.state }
    ibge_code { "1234567" }
  end
end
