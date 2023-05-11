# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    before_action :set_user, only: %i[show edit update destroy]

    # GET /users or /users.json
    def index
      # All users
      @users = User.all
    end

    # GET /users/1 or /users/1.json
    def show; end

    # GET /users/new
    def new
      @user = User.new
    end

    # GET /users/1/edit
    def edit; end

    # POST /users or /users.json
    def create
      @user = User.new(user_params)

      if @user.save
        render json: @user, status: :created
      else
        render user_errors
      end
    end

    # PATCH/PUT /users/1 or /users/1.json
    def update
      if @user.update(user_params)
        render json: @user, status: :ok
      else
        render user_errors
      end
    end

    # DELETE /users/1 or /users/1.json
    def destroy
      @user.destroy
      head :no_content
    end

    private

    def user_errors
      {
        json: {
          errors: {
            user: @user.errors.to_hash(full_messages = true)
          }
        },
        status: :unprocessable_entity
      }
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user)
            .permit(%i[email name last_name password password_confirmation])
    end
  end
end
