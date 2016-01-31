module Api
  module V1
    class ApplicationsController < ApplicationController
      def show
        @application = Application.find_by(auth_token: params[:id])
      end
    end
  end
end
