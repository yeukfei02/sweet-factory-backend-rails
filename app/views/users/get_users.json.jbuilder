# frozen_string_literal: true

json.message @message
json.users @users
json.error @error if @error.present?
