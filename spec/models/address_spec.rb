require 'rails_helper'

RSpec.describe Address, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:neighborhood) }
    it { is_expected.to allow_value('12345-123').for(:zip) }
    it { is_expected.not_to allow_value('123451123').for(:zip) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:public_place) }
    it { is_expected.to allow_value('1234567').for(:ibge_code) }
    it { is_expected.not_to allow_value('123456789').for(:ibge_code) }
  end
end
