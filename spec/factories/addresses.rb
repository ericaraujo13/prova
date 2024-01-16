FactoryBot.define do
  factory :address do
    zip { FFaker::AddressBR.zip_code }
    public_place { FFaker::AddressBR.street }
    complement { FFaker::AddressBR.complement }
    neighborhood { FFaker::AddressBR.neighborhood }
    city { FFaker::AddressBR.city }
    state { FFaker::AddressBR.state }
    ibge_code { "1234567" }
  end
end
