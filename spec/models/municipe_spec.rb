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
    it { is_expected.to define_enum_for(:status).with_values(active: 0, inactive: 1) }
    it { is_expected.to validate_presence_of(:birthday) }
  end
end
