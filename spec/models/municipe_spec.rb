require 'rails_helper'

RSpec.describe Municipe, type: :model do
  subject(:municipe) { build(:municipe) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to allow_value('user@example.com').for(:email) }
    it { is_expected.not_to allow_value('invalid_email').for(:email) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to define_enum_for(:status).with_values(inactive: 0, active: 1) }
    it { is_expected.to validate_presence_of(:birthday) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to allow_value('+123 45 67890-1234').for(:phone) }
    it { is_expected.not_to allow_value('+12345678901234').for(:phone) }
    it { is_expected.to validate_presence_of(:cns) }
    it { is_expected.to allow_value('123456789123456').for(:cns) }
    it { is_expected.not_to allow_value('12345678912345612').for(:cns) }
  end
end
