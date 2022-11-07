class AccessTokensController < ApplicationController
  def create
    authenticator = UserAuthenticator.new(params[:code])
    if authenticator.perform
          #return a token
    error = {
              "status" => "401",
              "source" => { "pointer" => "/code" },
              "title" =>  "Authentication code is invalid",
              "detail" => "You must provide valid code in order to exchange it for token."
            }
    render json: { "errors": [error] }, status: 401
  end
end
