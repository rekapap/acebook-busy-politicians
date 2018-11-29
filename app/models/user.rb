class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable,
       :validatable, authentication_keys: [:login, :sign_up]
       
  has_many :likes
  has_many :comments
  has_many :posts

end
