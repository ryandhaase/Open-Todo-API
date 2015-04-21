class Api::UsersController < ApplicationController
  # before_action :authenticate
  before_action :authenticated?

  def index 
    users = User.all
    render json: users, each_serializer: UserSerializer
  end
end