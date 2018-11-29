# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  extend Devise
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable,
       :validatable, authentication_keys: [:login, :sign_up]
end
