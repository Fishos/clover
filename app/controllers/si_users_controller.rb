class UsersController < ApplicationController
  before_action :set_ticket, only: [:show]
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end
end
