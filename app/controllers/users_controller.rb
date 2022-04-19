# frozen_string_literal: true

class UsersController < ApplicationController
  include UsersHelper

  def signup
    params.require(%i[email password])

    request_body = JSON.parse(request.raw_post)
    email = request_body['email']
    password = request_body['password']

    hash_password = UsersHelper.get_hash_password(password)

    user = User.create(email: email, password: hash_password)

    if user.present?
      @message = 'signup'
      render :signup, status: :ok
    else
      @message = 'signup error'
      render :signup, status: :bad_request
    end
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'signup error'
    @error = e.message.to_s
    render :signup, status: :bad_request
  end

  def login
    params.require(%i[email password])

    request_body = JSON.parse(request.raw_post)
    email = request_body['email']
    password = request_body['password']

    user = User.find_by(email: email)

    if user.present?
      hash_password_from_db = BCrypt::Password.new(user.password)
      if hash_password_from_db == password
        @token = UsersHelper.get_jwt_token(email)

        @message = 'login'
        @user_id = user.id
        render :login, status: :ok
      else
        @message = 'login error, wrong password'
        render :login, status: :bad_request
      end
    else
      @message = 'login error'
      render :login, status: :bad_request
    end
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'login error'
    @error = e.message.to_s
    render :login, status: :bad_request
  end

  def get_users
    @message = 'getUsers'
    @users = User.all
    render :get_users, status: :ok
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'getUsers error'
    @error = e.message.to_s
    render :get_users, status: :bad_request
  end

  def get_user_by_id
    @message = 'getUserById'
    @user = User.find(params[:id])
    render :get_user_by_id, status: :ok
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'getUserById error'
    @error = e.message.to_s
    render :get_user_by_id, status: :bad_request
  end
end
