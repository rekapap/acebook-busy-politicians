class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: { email: true, login: false }

  has_many :likes
  has_many :comments
  has_many :posts
end
