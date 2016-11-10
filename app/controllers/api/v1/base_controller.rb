class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json
  before_action :set_default_response_format
  before_action :restrict_access
  before_action :authenticate!

  private
    def set_default_response_format
      request.format = :json
    end

    def restrict_access
      authenticate_or_request_with_http_token do |token, options|
        User.exists?(auth_token: token) 
      end
    end

    def authenticate!
      user = authenticate_with_http_token { |token, options| User.find_by_auth_token(token) }
      @user = user
    end

end