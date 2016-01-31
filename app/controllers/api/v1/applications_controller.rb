module Api
  module V1
    class ApplicationsController < ApplicationController
      before_action :authenticate

      def show
        @application = Application.find(params[:id])
      end

      protected
      def authenticate
        unless Application.find_by(auth_token: params[:auth_token])
          raise ActionController::RoutingError.new('Not Found')
        end
      end
    end
  end
end
