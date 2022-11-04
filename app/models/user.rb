# frozen_string_literal: true

class User < ApplicationRecord
  validates :login, presence: true, uniqueness: true
  validates :provider, presence: true

  has_on :access_token, dependent: :destroy
end
