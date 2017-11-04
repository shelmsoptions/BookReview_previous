require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:user) { FactoryGirl.create(:user) }
  
  describe 'Validations' do
    subject { FactoryGirl.create(:book, user: user) }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to_not validate_uniqueness_of :title }
    it { is_expected.to have_many(:reviews) }
    it { is_expected.to belong_to(:genre) }
    it { is_expected.to belong_to(:user) }
  end
end