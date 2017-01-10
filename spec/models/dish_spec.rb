require 'rails_helper'

RSpec.describe Dish, type: :model do

  describe "DB table" do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :readytime }
    it { is_expected.to have_db_column :portions }
  end

  describe "Validation" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :readytime }
    it { is_expected.to validate_presence_of :portions }
  end

  describe "Factory" do
    it 'should have a valid factory' do
      expect(FactoryGirl.create(:dish)).to be_valid
    end
  end
end
