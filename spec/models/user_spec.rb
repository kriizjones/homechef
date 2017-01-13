require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'DB table' do
      it { is_expected.to have_db_column :id }
      it { is_expected.to have_db_column :email }
      it { is_expected.to have_db_column :encrypted_password }
      it { is_expected.to have_db_column :reset_password_token }
      it { is_expected.to have_db_column :reset_password_sent_at }
      it { is_expected.to have_db_column :remember_created_at }
      it { is_expected.to have_db_column :sign_in_count }
      it { is_expected.to have_db_column :current_sign_in_at }
      it { is_expected.to have_db_column :last_sign_in_at }
      it { is_expected.to have_db_column :current_sign_in_ip }
      it { is_expected.to have_db_column :last_sign_in_ip }
    end

    describe 'Validations' do
      it { is_expected.to validate_presence_of :email }
    end
end
