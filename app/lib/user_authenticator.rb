# frozen_string_literal: true

class UserAuthenticator
  class AuthenticationError < StandardError; end

  attr_reader :user

  def initialize(code) 
    @code = code
  end

  def perform
    client = Octokit::Client.new(
      client_id: ENV['GITHUB_CLIENT_ID'],
      client_secret: ENV['GITHUB_CLIENT_SECRET']
    )
    res = client.exhange_code_for_token(code)
    if res.error.present?
      raise AuthenticationError
  end

  private

  attr_reader :code
end
