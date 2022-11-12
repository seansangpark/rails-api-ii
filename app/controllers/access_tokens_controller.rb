class AccessTokensController < ApplicationController
  before_action :authorize!, only: :destroy
  
  def create
    authenticator = UserAuthenticator.new(params[:code])
    authenticator.perform

    result = serializer.new(authenticator.access_token)
    render json: result, status: :created
  end

  def serializer
    AccessTokenSerializer
  end

  def destroy
    current_user.access_token.destroy
  end
end
