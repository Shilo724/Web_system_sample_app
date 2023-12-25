class UsersController < ApplicationController
  # GET /users/id
  def show
    #@user = User.first
    @user = User.find(params[:id])

    # foo = "foobar"
    # hoge = "hogehoge"
    # debugger
  end

  # GET /users/new.html.erb
  def new
    # => app/views/users/new.html.erb
    @user = User.new
  end

  #POST /users
  def Create
    
  end
end
