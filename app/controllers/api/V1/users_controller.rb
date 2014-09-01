module Api
  module V1
    class UsersController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
      # Use Mongoid::Errors::DocumentNotFound with mongoid

      def not_found
        respond_to do |format|
          format.json {render json:'{"error": "usuario no encontrado"}', status: :not_found}
        end
      end

      def show
        @user = User.where(email: params[:email]).first!

      end
    end
  end
end
