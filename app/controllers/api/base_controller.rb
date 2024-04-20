module Api
  class BaseController < ApplicationController
    before_action :force_out!

    private

    def force_out!
      # force out if not authorized
      # raise Api::Errors::UnauthorizedError unless authorized?
    end
  end
end