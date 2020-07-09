class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lists

  validates         :Nickname, presence: true
  def self.guest
    find_or_create_by!(email: 'guest@yahoo.co.jp',Nickname: 'guest') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
