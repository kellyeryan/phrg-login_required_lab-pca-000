# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    if !params[:name].present?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/sessions/home"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/sessions/home"
  end
end
