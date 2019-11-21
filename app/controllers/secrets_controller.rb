# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :require_login

private

  def require_login
    unless session.include? :name
      redirect_to "/login"
    end
  end
end
