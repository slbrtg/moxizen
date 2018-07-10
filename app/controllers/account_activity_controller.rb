class AccountActivityController < ApplicationController
  # talk inherited from Application Controller, returns Talk.new

  def save_account_activity
    AccountActivity.save_account_activity
  rescue StandardError => e
    puts e
  end

  # Method that returns all agent data
  def account_activity
    activity_query = 'DATE(created_at) >= ?'
    req_days = Date.today-request.headers['HTTP_REQ_DAYS'].to_i

    render json: AccountActivity.where(activity_query, req_days)
  rescue StandardError => e
    puts e
  end
end
