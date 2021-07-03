class MainController < ApplicationController
  def index
    @message = 'sweet-factory-backend-rails'
    render :index, status: 200
  end
end
