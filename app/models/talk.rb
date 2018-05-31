class Talk < ApplicationRecord
  def initialize
    @api_username = Rails.application.secrets.api_username
    @api_token = Rails.application.secrets.api_token
  end
end
