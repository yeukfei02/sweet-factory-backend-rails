# frozen_string_literal: true

class MainController < ApplicationController
  def index
    @message = 'sweet-factory-backend-rails'
    render :index, status: :ok
  end
end
