class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :encrypted_password, presence: true
  validates :reset_password_token, presence: true
  validates :reset_password_sent_at, presence: true
  validates :remember_created_at, presence: true
  validates :sign_in_count, presence: true
  validates :current_sign_in_at, presence: true
  validates :last_sign_in_at, presence: true
  validates :current_sign_in_ip, presence: true
  validates :last_sign_in_ip, presence: true
end
