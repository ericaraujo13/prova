FactoryBot.define do
  factory :municipe do
    name { FFaker::NameBR.name }
    email { FFaker::Internet.safe_email }
    birthday { FFaker::Date.birthday }
    phone { '+55 32 97761-3820' }
    status { rand(0..1) }
    cns { '123456789123456' }
    address
  end
end
