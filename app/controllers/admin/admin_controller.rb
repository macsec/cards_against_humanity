# frozen_string_literal: true

module Admin
  class AdminController < ApplicationController
    private

    def authenticate

      authenticate_or_request_with_http_basic('Administration') do |username, password|
        username == ENV.fetch('HTTP_BASIC_ADM_USERNAME') && password == ENV.fetch('HTTP_BASIC_ADM_PASSWORD')
      end
    end
  end
end
