module API
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        render json: users
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: user status: :created
        else
          render json: user.errors status: :unprocessable_entity
        end
      end
    end
  end
end