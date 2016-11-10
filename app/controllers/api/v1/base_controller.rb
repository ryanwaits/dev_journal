class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json
  before_action :set_default_response_format

  private
    def set_default_response_format
      request.format = :json
    end
end