# frozen_string_literal: true

json.message @message
json.user @user
json.error @error if @error.present?
