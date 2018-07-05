class AccountActivityController < ApplicationController
  # talk inherited from Application Controller, returns Talk.new

  def save_account_activity
    AccountActivity.save_account_activity
  rescue StandardError => e
    puts e
  end
end
