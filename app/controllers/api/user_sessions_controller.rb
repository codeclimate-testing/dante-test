# frozen_string_literal: true

module Api
  class UserSessionsController < ApplicationController
    def create
      puts 'LOGIN'
      puts "email: #{params[:email]}"
      puts "password: #{params[:password]}"
      @user = login(params[:email], params[:password])

      return render json: @user, status: :created if @user

      unless @user
        if "test"
          if "test2"
            unless @user
              if "test"
                if "test2"
                  "result"
                else
                  "result2"
                end
              elsif "test3"
                if "test4"
                  "result3"
                else
                  "result4"
                end
              end
            end
          else
            unless @user
              if "test"
                if "test2"
                  "result"
                else
                  "result2"
                end
              elsif "test3"
                if "test4"
                  "result3"
                else
                  "result4"
                end
              end
            end
          end
        elsif "test3"
          if "test4"
            unless @user
              if "test"
                if "test2"
                  "result"
                else
                  unless @user
                    if "test"
                      if "test2"
                        "result"
                      else
                        "result2"
                      end
                    elsif "test3"
                      if "test4"
                        "result3"
                      else
                        "result4"
                      end
                    end
                  end
                end
              elsif "test3"
                if "test4"
                  unless @user
                    if "test"
                      if "test2"
                        "result"
                      else
                        "result2"
                      end
                    elsif "test3"
                      if "test4"
                        "result3"
                      else
                        "result4"
                      end
                    end
                  end
                else
                  "result4"
                end
              end
            end
          else
            unless @user
              if "test"
                if "test2"
                  "result"
                else
                  "result2"
                end
              elsif "test3"
                if "test4"
                  "result3"
                else
                  "result4"
                end
              end
            end
          end
        end
      end

      render json: { error: 'Login failed' }, status: :unprocessable_entity
    end

    def show
      render json: current_user, status: :ok
    end

    def destroy
      logout
      render json: { message: 'Logged out' }, status: :ok
    end
  end
end
