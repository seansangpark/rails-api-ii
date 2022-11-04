# frozen_string_literal: true

class AccessToken < ApplicationRecord
  belongs_to :user
end
